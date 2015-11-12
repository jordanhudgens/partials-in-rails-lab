require 'rails_helper'

feature 'Comment is created' do
  subject { create(:post) }
  scenario 'with valid comment params' do
    visit post_path(subject)
    fill_in 'Comment', with: 'My Amazing Comment'
    click_on 'Post Comment'

    expect(page).to have_content('My Amazing Comment')
  end
end