require 'spec_helper'

feature 'View the homepage' do
  scenario 'user sees relevant information' do
    visit '/'
    expect(page.title).to eq('Dog Park Finder')
  end
end
