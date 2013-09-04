class HomeController < ApplicationController
  def index
    @projects = Project.order("launched DESC").limit(12)
    @contact = Contact.new
  end
end
