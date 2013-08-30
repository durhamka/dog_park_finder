require 'spec_helper'

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit '/'
    expect(page.title).to eq('Dog Park Finder')
    expect(page).to have_content('Find a dog park. Play with your best friend.')
  end
end
