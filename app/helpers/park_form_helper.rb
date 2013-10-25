module ParkFormHelper
  def amenity_check_box(amenity)
    check_box_id = "user_park_amenities_#{amenity}".parameterize.underscore
    check_box_tag('user_park[amenities][]', amenity, false, id: check_box_id) +
    label_tag(check_box_id, amenity)
  end
end
