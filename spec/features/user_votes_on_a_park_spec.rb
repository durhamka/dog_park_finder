require 'spec_helper'

feature 'User Votes on a Park' do

  scenario 'with an upvote' do
    FactoryGirl.create(:user_park, name: 'Harleigh Park')
    visit user_parks_path
    click_button '+1'

    expect(current_path).to eq(user_parks_path)
    expect(page).to have_content('Thank you for your vote!')
    expect(page).to have_content('1 upvote')
  end

end
