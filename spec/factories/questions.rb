require 'faker'

FactoryGirl.define do
  factory :question do
    question { Faker::Lorem.words }
    answer { Faker::Lorem.paragraph }
  end
end
