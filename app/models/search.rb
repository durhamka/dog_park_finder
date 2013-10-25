class Search
  attr_reader :city, :amenities

  def initialize(criteria = nil)
    if criteria
      @city = criteria.fetch(:city)
      @amenities = criteria.fetch(:amenities, [])
    end
  end

  def results
    scopes = [
      :search_on_city,
      :search_on_amenities
    ]
    scopes.inject(UserPark.unscoped) do |results, scope|
      results.merge(self.send(scope))
    end
  end

  # ActiveModel boilerplate
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end

  private

  def search_on_city
    UserPark.where(['city LIKE ?', "%#{city}%"])
  end

  def search_on_amenities
    if amenities.any?
      UserPark.joins(:amenities).
        where('amenities.name' => amenities).
        group('user_parks.id')
    end
  end
end
