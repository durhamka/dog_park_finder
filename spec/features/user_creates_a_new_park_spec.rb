require 'spec_helper'

feature 'User creates a new park' do
  pending 'successfully' do
    visit new_user_park_path

    fill_in 'user_park_name', with: 'Harleigh Park'
    fill_in 'user_park_address', with: '21 Pup St.'
    fill_in 'user_park_city', with: 'Denver'
    fill_in 'user_park_zip_code', with: '80201'
    fill_in 'user_park_description', with: 'Water feature and doggie water fountain'
    click_button 'Create Park'
  end

  scenario 'with missing information, so it errors' do
    visit new_user_park_path
    click_button 'Create Park'

    expect(page).to have_content("City can't be blank")
    expect(page).to have_content("Name can't be blank")
  end
end
