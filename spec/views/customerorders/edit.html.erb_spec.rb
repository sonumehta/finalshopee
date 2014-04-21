require 'spec_helper'

describe "customerorders/edit" do
  before(:each) do
    @customerorder = assign(:customerorder, stub_model(Customerorder,
      :name => "MyString",
      :address => "MyText",
      :email => "MyString",
      :pay_type => "MyString"
    ))
  end

  it "renders the edit customerorder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customerorder_path(@customerorder), "post" do
      assert_select "input#customerorder_name[name=?]", "customerorder[name]"
      assert_select "textarea#customerorder_address[name=?]", "customerorder[address]"
      assert_select "input#customerorder_email[name=?]", "customerorder[email]"
      assert_select "input#customerorder_pay_type[name=?]", "customerorder[pay_type]"
    end
  end
end
