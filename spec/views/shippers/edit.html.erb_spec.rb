require 'spec_helper'

describe "shippers/edit" do
  before(:each) do
    @shipper = assign(:shipper, stub_model(Shipper,
      :company_name => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit shipper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shipper_path(@shipper), "post" do
      assert_select "input#shipper_company_name[name=?]", "shipper[company_name]"
      assert_select "input#shipper_phone[name=?]", "shipper[phone]"
    end
  end
end
