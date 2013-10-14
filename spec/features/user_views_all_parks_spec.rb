require 'spec_helper'

feature 'User views the created dog parks' do
  scenario 'with parks sorted by vote count (default)' do
    unpopular_park = FactoryGirl.create(:user_park, name: 'An Unpopular Park')
    popular_park = FactoryGirl.create(:user_park, name: 'A Popular Park')
    FactoryGirl.create(:vote, user_park_id: popular_park.id, direction: true)
    FactoryGirl.create(:vote, user_park_id: unpopular_park.id, direction: false)

    visit user_parks_path

    within 'tr:nth-child(1)' do
      expect(page).to have_content('A Popular Park')
    end

    within 'tr:nth-child(2)' do
      expect(page).to have_content('An Unpopular Park')
    end
  end
end
