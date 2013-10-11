require 'spec_helper'

describe UserPark do
  describe '#all_parks' do
    it 'returns all of the user created parks' do
      dog_park_1 = double(name: 'Harleigh Park')
      dog_park_2 = double(name: 'Foothiills Dog Park')
      dog_park_3 = double(name: 'Railyard Dog Park')
      parks = UserPark.new

      expect(parks.all_parks).to eq(['Harleigh Park', 'Foothills Dog Park', 'Railyard Dog Park'])
    end
  end
end
