require 'spec_helper'

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit root_path

    expect(page.title).to eq('Dog Park Finder')
    expect(page).to have_content('Find a dog park. Play with your best friend.')
  end

  scenario 'user views the navigation bar' do
      visit root_path

      find_link('Create a New Dog Park').visible?
      find_link('Dog Park Guide').visible?
      find_link('View All Parks').visible?
  end
end
