require 'spec_helper'

feature 'User/Dog Lover signs up for an account' do
  scenario 'successfully' do
    visit root_path
    click_link 'Sign Up'
    current_path == new_dog_lover_path

    fill_in 'Name', with: 'Harleigh'
    fill_in 'Email', with: 'harleigh@cutepup.com'
    click_button 'Create My Account'

    expect(page).to have_content("Thank you for creating an account")
  end
end
