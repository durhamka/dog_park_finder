FactoryGirl.define do
  factory :amenity do
    name 'Grass'
    association :user_park
  end
end
