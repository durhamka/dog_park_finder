class Park < ActiveRecord::Base
  attr_accessible :name
  SEARCH_RADIUS = 3000
end
