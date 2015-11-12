require 'rails_helper'

feature 'Post is created' do
  scenario 'on the new post page' do
    visit new_post_path
    fill_in 'Title', with: 'My Post Title'
    fill_in 'Description', with: 'My amazing description' 
    click_on 'Save Post'

    expect(page).to have_content('My amazing description')
  end

  scenario 'on the edit post page' do
    post = create(:post)
    visit edit_post_path(post)
    fill_in 'Title', with: 'My Edited Post Title'
    fill_in 'Description', with: 'My edited amazing description' 
    click_on 'Save Post'

    expect(page).to have_content('My edited amazing description')
  end
end