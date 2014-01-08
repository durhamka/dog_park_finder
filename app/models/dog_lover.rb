class DogLover < ActiveRecord::Base
  attr_accessible :name, :email
  validates :name, presence: true
  validates :email, presence: true
end
