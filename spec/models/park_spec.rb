require 'spec_helper'

describe Park do
  describe '#all_parks' do
    it 'returns all of the user created dog parks' do
      park_1 = double(park_name: 'Foothills Dog Park')
      park_2 = double(park_name: "Kinsey's Park")
      park_3 = double(park_name: 'Harleigh Fun Park')

      parks = Park.new(parks)

      expect(parks.all_parks).to eq('Foothills Dog Park', "Kinsey's Park", 'Harleigh Fun Park')
    end
  end
end
