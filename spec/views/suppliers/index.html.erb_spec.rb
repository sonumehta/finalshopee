require 'spec_helper'

describe "suppliers/index" do
  before(:each) do
    assign(:suppliers, [
      stub_model(Supplier,
        :company_name => "Company Name",
        :email => "Email",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :pincode => 1,
        :phone => 2
      ),
      stub_model(Supplier,
        :company_name => "Company Name",
        :email => "Email",
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :pincode => 1,
        :phone => 2
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
