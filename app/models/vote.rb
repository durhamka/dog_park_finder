class Vote < ActiveRecord::Base
  attr_accessible :user_park_id, :direction
  belongs_to :user_park
end
