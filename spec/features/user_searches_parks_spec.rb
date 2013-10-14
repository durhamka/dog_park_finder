require 'spec_helper'

feature 'User searches parks' do
  scenario 'with the name of a city' do
    FactoryGirl.create(:user_park, name: 'Expected Park', city: 'Denver')
    FactoryGirl.create(:user_park, name: 'Unexpected Park', city: 'St Louis')

    visit root_path
    fill_in 'search_address', with: 'Denver'
    click_button 'Search'

    expect(page).to have_content('Expected Park')
    expect(page).not_to have_content('Unexpected Park')
  end

  scenario 'with the name of a city for which no results are returned' do
    FactoryGirl.create(:user_park, name: 'Expected Park', city: 'Denver')
    FactoryGirl.create(:user_park, name: 'Unexpected Park', city: 'St Louis')

    visit root_path
    fill_in 'search_address', with: 'Miami'
    click_button 'Search'

    expect(page).to have_content('Sorry. There are no current dog parks that we know about in your city.')
  end
end
