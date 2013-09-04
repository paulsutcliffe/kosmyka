class Project < ActiveRecord::Base
  attr_accessible :areas, :client, :description, :launched, :name, :tecnologies, :kind, :url, :image, :screenshots_attributes

  has_many :screenshots

  accepts_nested_attributes_for :screenshots, :allow_destroy => true

  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :image, ImageUploader

  def previous_project
    self.class.first(:conditions => ["name < ?", name], :order => "name desc")
  end

  def next_project
    self.class.first(:conditions => ["name > ?", name], :order => "name asc")
  end
end
