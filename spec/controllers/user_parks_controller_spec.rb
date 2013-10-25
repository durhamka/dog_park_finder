require 'spec_helper'

describe UserParksController do
  describe 'POST create' do
    it 'saves the user park with the correct attributes' do
      post(:create, user_park: {
        amenities: ['Dirt', 'Grass'],
        name: 'Harleigh Park',
        city: 'Boulder'
      })

      user_park = assigns(:user_park)
      expect(user_park.name).to eq('Harleigh Park')
      expect(user_park.city).to eq('Boulder')
      expect(user_park.amenities.map(&:name)).to eq(['Dirt', 'Grass'])
    end
  end
end
