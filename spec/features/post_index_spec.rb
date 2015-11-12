require 'rails_helper'

feature 'Multiple posts are shown' do
  scenario 'on the index page' do
    Post.create!(title: "Post One", description: "Text goes here")
    Post.create!(title: "Post Two", description: "Text goes here")

    visit posts_path

    expect(page).to have_content(/Post One|Post Two/)
  end
end