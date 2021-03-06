require 'spec_helper'

feature 'User creates a new park' do
  scenario 'successfully' do
    visit new_user_park_path
    dog_park_creation_form
    click_button 'Create Park'

    expect(page).to have_content("Thank you for creating a park")
  end

  scenario 'with missing information, so it errors' do
    visit new_user_park_path
    click_button 'Create Park'

    expect(page).to have_content("City can't be blank")
    expect(page).to have_content("Name can't be blank")
  end

  def dog_park_creation_form
    fill_in 'user_park_name', with: 'Harleigh Park'
    fill_in 'user_park_address', with: '21 Pup St.'
    fill_in 'user_park_city', with: 'Denver'
    fill_in 'user_park_zip_code', with: '80201'
    fill_in 'user_park_description', with: 'Water feature and doggie water fountain'
  end
end
