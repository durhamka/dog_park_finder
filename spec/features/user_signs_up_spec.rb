require 'spec_helper'

feature 'User/Dog Lover signs up for an account' do
  scenario 'successfully' do
    sign_up

    fill_in 'Name', with: 'Harleigh'
    fill_in 'Email', with: 'harleigh@cutepup.com'
    click_button 'Create My Account'

    expect(page).to have_content("Thank you for creating an account")
  end

  scenario 'unsuccessfully' do
    sign_up

    fill_in 'Name', with: 'Mali'
    click_button 'Create My Account'

    expect(page).to have_content("Please try again")
  end

  def sign_up
    visit root_path
    click_link 'Sign Up'
    current_path == new_dog_lover_path
  end
end
