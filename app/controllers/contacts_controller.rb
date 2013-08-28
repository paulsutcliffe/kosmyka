#coding: utf-8
class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:new, :create]

  def create
    @contact = Contact.new(params[:contact])

    create! do |success, failure|
      success.html do
        NotificationsMailer.new_contact(@contact).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito."
        redirect_to new_contact_path
      end

      failure.html do
        flash[:notice] = "No se envió el mensaje, corrige los campos y vuelve a intentar."
        render :action => "new"
      end

    end
  end

  def index
    @contacts = Contact.order("created_at ASC").paginate(:page => params[:page], :per_page => 30)
  end
end
