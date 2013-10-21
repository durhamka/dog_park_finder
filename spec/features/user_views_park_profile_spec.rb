require 'spec_helper'

feature 'User can view park profile' do
  scenario 'within park search results' do
    user_park = FactoryGirl.create(:user_park, name: 'Harleigh Park')

    visit user_parks_path
    click_link('Harleigh Park')

    expect(page).to have_content('Harleigh Park Profile Page')
  end

  scenario "within 'View All Parks' results" do
    user_park = FactoryGirl.create(:user_park, name: 'Mali Park')

    visit user_parks_path
    click_link('Mali Park')

    expect(page).to have_content('Mali Park Profile Page')
  end
end
