class UserPark < ActiveRecord::Base
  attr_accessible :name, :address, :city, :zip_code, :description
end
