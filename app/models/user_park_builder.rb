class UserParkBuilder
  attr_reader :park_attrs, :amenities, :user_park

  def self.build_park(park_attrs)
    saver_guy = self.new(park_attrs)
    saver_guy.build_amenities
    saver_guy.user_park
  end

  def initialize(park_attrs)
    @amenities = park_attrs.delete(:amenities) || []
    @park_attrs = park_attrs
  end

  def build_amenities
    @user_park = UserPark.new(park_attrs)

    amenities.each do |amenity|
      user_park.amenities.build(name: amenity)
    end
  end
end
