require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :product_id => 1,
      :content => "MyString",
      :text => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
      assert_select "input#comment_product_id[name=?]", "comment[product_id]"
      assert_select "input#comment_content[name=?]", "comment[content]"
      assert_select "input#comment_text[name=?]", "comment[text]"
      assert_select "input#comment_user_id[name=?]", "comment[user_id]"
    end
  end
end
