require 'spec_helper'

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit '/'
    expect(page.title).to eq('Dog Park Finder')
  end
end

feature 'Search by Address' do
  scenario 'search nearby dog park by address' do
    FactoryGirl.create(:park)
    visit '/'
    fill_in 'Where do you want to play', with: 'Boulder'
    click_button "Search"
    expect(page).to have_content("Foothills Dog Park")
  end
  scenario 'search returns no results' do
    visit '/'
    fill_in 'Where do you want to play', with: 'Boulder'
    click_button "Search"
    expect(page).to_not have_content("Valmont Dog Park")
  end
end
