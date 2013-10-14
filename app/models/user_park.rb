class UserPark < ActiveRecord::Base
  attr_accessible :name, :address, :city, :zip_code, :description, :picture
  validates :name, :city, presence: true
  has_many :votes

  def upvotes
    votes.where(direction: true)
  end

  def downvotes
    votes.where(direction: false)
  end

  def self.search(city)
    where(city: city)
  end
end
