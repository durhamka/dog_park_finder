require 'spec_helper'

describe UserPark do
  describe '.sorted_by_popularity' do
    it 'returns the parks, sorted by upvotes' do
      unpopular_park = FactoryGirl.create(:user_park, name: 'An Unpopular Park')
      popular_park = FactoryGirl.create(:user_park, name: 'A Popular Park')
      FactoryGirl.create(:vote, user_park_id: popular_park.id, direction: true)
      FactoryGirl.create(:vote, user_park_id: unpopular_park.id, direction: false)

      expect(UserPark.sorted_by_popularity).to eq([popular_park, unpopular_park])
    end
  end

end
