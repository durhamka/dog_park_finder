class UserPark < ActiveRecord::Base
  attr_accessible :name, :address, :city, :zip_code, :description, :picture
  validates :name, :city, presence: true
  has_many :votes

  def upvote_count
    votes.where(direction: true).count
  end

  def downvote_count
    votes.where(direction: false).count
  end
end
