class Amenity < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user_park

  AMENITIES = [
    'Dirt',
    'Bags Provided',
    'Fenced',
    'Grass',
    'Water Provided',
    'Off Leash',
    'Water Feature'
  ]

  def self.amenities
    AMENITIES
  end
end
