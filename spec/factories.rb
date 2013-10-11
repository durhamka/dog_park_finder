require 'factory_girl'

FactoryGirl.define do
  factory :park do
    name "Foothills Dog Park"
    address   "2121 Foothills Parkway Boulder, CO"
    city "Boulder"
    zip_code "80304"
  end

  factory :user_park do
    name "Foothills Dog Park"
    address   "2121 Foothills Parkway Boulder, CO"
    city "Boulder"
    zip_code "80304"
  end
end
