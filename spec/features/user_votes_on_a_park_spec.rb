require 'spec_helper'

feature 'User Votes on a Park' do
  scenario 'with an upvote' do
    create_user_park
    click_button '+1'

    expect(current_path).to eq(user_parks_path)
    expect(page).to have_content('Thank you for your vote!')
    expect(page).to have_content('1 upvote')
    expect(page).to have_content('0 downvotes')
  end

  scenario 'with a downvote' do
    create_user_park
    click_button '-1'

    expect(current_path). to eq(user_parks_path)
    expect(page).to have_content('Thank you for your vote!')
    expect(page).to have_content('0 upvotes')
    expect(page).to have_content('1 downvote')
  end

  def create_user_park
    FactoryGirl.create(:user_park)
    visit user_parks_path
  end
end

