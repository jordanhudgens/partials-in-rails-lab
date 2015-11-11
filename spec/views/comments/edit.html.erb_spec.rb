require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :post => nil,
      :comment_body => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_post_id[name=?]", "comment[post_id]"

      assert_select "textarea#comment_comment_body[name=?]", "comment[comment_body]"
    end
  end
end
