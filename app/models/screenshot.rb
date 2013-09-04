class Screenshot < ActiveRecord::Base
  attr_accessible :screenshot

  belongs_to :project

  mount_uploader :screenshot, ScreenshotUploader
end
