require 'spec_helper'

feature 'User searches parks' do
  scenario 'with the name of a city' do
    FactoryGirl.create(:user_park, name: 'Expected Park', city: 'Denver')
    FactoryGirl.create(:user_park, name: 'Unexpected Park', city: 'St Louis')

    visit root_path
    fill_in 'search_city', with: 'denver'
    click_button 'Search'

    expect(page).to have_content('Expected Park')
    expect(page).not_to have_content('Unexpected Park')
  end

  scenario 'with the name of a city for which no results are returned' do
    FactoryGirl.create(:user_park, name: 'Expected Park', city: 'Denver')
    FactoryGirl.create(:user_park, name: 'Unexpected Park', city: 'St Louis')

    visit root_path
    fill_in 'search_city', with: 'Miami'
    click_button 'Search'

    expect(page).to have_content('Sorry. There are no current dog parks that we know about in your city.')
  end

  scenario 'with the name of a city and specific amenities' do
    expected_park = FactoryGirl.create(:user_park, name: 'Expected Park', city: 'Denver')
    unexpected_park = FactoryGirl.create(:user_park, name: 'Unexpected Park', city: 'Denver')

    FactoryGirl.create(:amenity, name: 'Grass', user_park: expected_park)
    FactoryGirl.create(:amenity, name: 'Dirt', user_park: unexpected_park)

    visit root_path
    fill_in 'search_city', with: 'Denver'
    check 'Grass'
    click_button 'Search'

    expect(page).to have_content('Expected Park')
    expect(page).not_to have_content('Unexpected Park')
  end
end
