require 'spec_helper'

describe "shippers/new" do
  before(:each) do
    assign(:shipper, stub_model(Shipper,
      :company_name => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new shipper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shippers_path, "post" do
      assert_select "input#shipper_company_name[name=?]", "shipper[company_name]"
      assert_select "input#shipper_phone[name=?]", "shipper[phone]"
    end
  end
end
