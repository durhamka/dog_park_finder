require 'spec_helper'

feature 'Search by Address' do
  scenario 'search nearby dog park by address' do
    visit '/index'
    fill_in 'Where do you want to play', with: 'Boulder'
  end
end
