require 'faker'

FactoryGirl.define do
  factory :project do
    name { Faker::Company.name }
    client { Faker::Name.name }
    launched "2013-08-16"
    areas { Faker::Lorem.words }
    tecnologies { Faker::Lorem.words }
    description { Faker::Lorem.paragraph }
    url { Faker::Internet.url }
    kind "web"
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'slide-medical-laboral.jpg')) }
  end
end
