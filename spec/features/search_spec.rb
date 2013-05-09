require 'spec_helper'

feature 'Search by Address' do
  scenario 'search nearby dog park by address' do
    visit '/'
    fill_in 'Where do you want to play', with: 'Boulder'
    click_button "Search"
    expect(page).to have_content("Foothills Dog Park")

  end
  
  scenario 'search returns no results' do
    visit '/'
    fill_in 'Where do you want to play', with: 'Boulder'
    click_button "Search"
    expect(page).to_not have_content("Foothills Dog Park")
  end


end
