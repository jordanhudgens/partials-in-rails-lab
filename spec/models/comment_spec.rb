require 'rails_helper'

describe Comment do
  subject { create(:comment) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it 'belongs to a post' do
    post = create(:post)
    comment = create(:comment, comment_body: "asdf", post: post)
    expect(comment.post.id).to eq(post.id)
  end
end