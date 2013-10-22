require 'spec_helper'

describe UserPark do
  describe '.sorted_by_popularity' do
    context 'parks with unpopular and popular votes' do
      it 'returns the parks, sorted by upvotes' do
        unpopular_park = FactoryGirl.create(:user_park, name: 'An Unpopular Park')
        popular_park = FactoryGirl.create(:user_park, name: 'A Popular Park')

        FactoryGirl.create(:vote, user_park_id: popular_park.id, direction: true)
        FactoryGirl.create(:vote, user_park_id: unpopular_park.id, direction: false)

        expect(UserPark.sorted_by_popularity).to eq([popular_park, unpopular_park])
      end
    end

    context 'parks with only unpopular votes' do
      it 'returns the parks, sorted by upvotes' do
        unpopular_park_1 = FactoryGirl.create(:user_park, name: 'Dirty Park')
        unpopular_park_2 = FactoryGirl.create(:user_park, name: 'Smelly Park')

        FactoryGirl.create(:vote, user_park_id: unpopular_park_1.id, direction: false)
        FactoryGirl.create(:vote, user_park_id: unpopular_park_2.id, direction: false)

        expect(UserPark.sorted_by_popularity).to eq([unpopular_park_1, unpopular_park_2])
      end
    end

    context 'parks with the same number of upvotes' do
      it 'returns the parks, sorted by upvotes' do
        popular_park_1 = FactoryGirl.create(:user_park, name: 'Great Park')
        popular_park_2 = FactoryGirl.create(:user_park, name: 'Awesome Park')

        FactoryGirl.create(:vote, user_park_id: popular_park_1.id, direction: true)
        FactoryGirl.create(:vote, user_park_id: popular_park_2.id, direction: true)

        expect(UserPark.sorted_by_popularity).to eq([popular_park_1, popular_park_2])
      end
    end
  end
end
