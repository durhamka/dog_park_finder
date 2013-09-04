require 'spec_helper'

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit root_path

    expect(page.title).to eq('Dog Park Finder')
    expect(page).to have_content('Find a dog park. Play with your best friend.')
  end

  scenario 'user can click on a link to create a new park' do
    visit root_path

    click_link 'Create a New Dog Park'
    expect(page).to have_content('Thank you for adding a new park!')
  end
end
