module ParkFormHelper
  def amenity_check_box(amenity, form_prefix)
    check_box_id = "#{form_prefix}_amenities_#{amenity}".parameterize.underscore
    check_box_tag("#{form_prefix}[amenities][]", amenity, false, id: check_box_id) +
    label_tag(check_box_id, amenity)
  end
end
