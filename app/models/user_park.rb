class UserPark < ActiveRecord::Base
  attr_accessible :name, :address, :city, :zip_code, :description, :picture
  validates :name, :city, presence: true
  has_many :votes

end
