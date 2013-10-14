require 'factory_girl'

FactoryGirl.define do
  factory :user_park do
    name "Harleigh's Park"
    address   "5108 Cordoniz St."
    city "Denver"
    zip_code "80304"
  end

  factory :vote do
    direction true
  end
end
