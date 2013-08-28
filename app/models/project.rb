class Project < ActiveRecord::Base
  attr_accessible :areas, :client, :description, :launched, :name, :tecnologies, :kind, :url, :image

  mount_uploader :image, ImageUploader
end
