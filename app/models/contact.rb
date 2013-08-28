class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  PHONE_REGEX = /^\(?([0-9]{2,4})\)?[-. ]?([0-9]{3,4})[-. ]?([0-9]{0,4})$/

  validates :name, :presence => true, :length => { :maximum => 200 }
  validates :phone, :presence => true, :length => { :maximum => 16 }, :format => PHONE_REGEX
  validates :email, :presence => true, :length => { :maximum => 100 }, :format => EMAIL_REGEX
  validates :message, :presence => true, :length => { :maximum => 1000 }
end
