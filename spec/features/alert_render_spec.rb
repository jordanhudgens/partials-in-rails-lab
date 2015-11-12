require 'rails_helper'

feature 'Alert is shown when comment is created' do
  subject { create(:post) }
  scenario 'will show alert' do
    visit post_path(subject)
    fill_in 'Comment', with: 'My Amazing Comment'
    click_on 'Post Comment'

    expect(page).to have_content('Comment was successfully created')
  end
end