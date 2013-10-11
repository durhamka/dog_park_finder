class Vote < ActiveRecord::Base
  attr_accessible :user_park_id
  belongs_to :user_park
end
