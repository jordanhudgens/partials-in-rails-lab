require 'rails_helper'

feature 'Navigation on all pages' do

  scenario 'on the homepage' do
    visit root_path
    expect(page).to have_content('About')
  end

  scenario 'on the about page' do
    visit pages_about_path
    expect(page).to have_content('Home')
  end

  scenario 'on the post index page' do
    visit posts_path
    expect(page).to have_content('Contact')
  end

  scenario 'on the contact page' do
    visit pages_contact_path
    expect(page).to have_content('Posts')
  end
end