require 'spec_helper'

describe "shippers/index" do
  before(:each) do
    assign(:shippers, [
      stub_model(Shipper,
        :company_name => "Company Name",
        :phone => "Phone"
      ),
      stub_model(Shipper,
        :company_name => "Company Name",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of shippers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
