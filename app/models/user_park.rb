class UserPark < ActiveRecord::Base
  attr_accessible :name, :address, :city, :zip_code, :description, :picture
  validates :name, :city, presence: true
  has_many :votes

  def self.search(city)
    where(['city LIKE ?', "%#{city}%"])
  end

  def self.sorted_by_popularity
    all.sort do |park_a, park_b|
      park_b.upvote_count <=> park_a.upvote_count
    end
  end

  def upvote_count
    upvotes.count
  end

  def upvotes
    votes.where(direction: true)
  end

  def downvotes
    votes.where(direction: false)
  end
end
