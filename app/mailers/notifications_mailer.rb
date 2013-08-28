class NotificationsMailer < ActionMailer::Base
  default :from => "Kosmyka <info@kosmyka.com>"

  def new_contact(contact)
    @contact = contact
    mail(:to => "info@kosmyka.com", :reply_to => contact.email, :subject => "Mensaje de #{contact.name}")
  end
end
