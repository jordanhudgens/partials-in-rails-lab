require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :post => nil,
      :comment_body => "MyText"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "textarea#comment_comment_body[name=?]", "comment[comment_body]"
    end
  end
end
