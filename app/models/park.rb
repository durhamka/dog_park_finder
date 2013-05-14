class Park < ActiveRecord::Base
  attr_accessible :name
  SEARCH_RADIUS = 3000

  def show_park_path
  end
end
