require 'rails_helper'

describe Post do
  subject { create(:post) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it 'has many comments' do
    5.times.each { create(:comment, comment_body: "asdf", post: subject) }
    expect(subject.comments.size).to eq(5)
  end
end
