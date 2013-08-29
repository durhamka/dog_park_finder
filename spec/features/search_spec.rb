require 'spec_helper'

feature 'Search for nearby dog park' do
  context 'by address' do
    scenario 'search returns multiple results' do
      FactoryGirl.create(:park, name: 'Railyard Dog Park')
      FactoryGirl.create(:park, name: 'Denver Dog Park')
      visit root_url
      fill_in 'search_address', with: '1460 Little Raven St. Denver'
      click_button "Search"

      expect(page).to have_content('Railyard Dog Park')
      expect(page).to have_content('Denver Dog Park')
    end

    scenario 'search returns no results' do
      visit root_url
      fill_in 'search_address', with: '166 8th St. Denver'
      click_button "Search"

      #expect(page).to_not have_content('Railyard Dog Park')
    end

    xscenario 'user selects park and views park profile page' do
      visit root_url
      click_link "Foothills Dog Park"

      expect(page).to have_content("Location and Amenities")
    end
  end
end
