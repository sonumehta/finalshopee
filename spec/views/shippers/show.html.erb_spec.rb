require 'spec_helper'

describe "shippers/show" do
  before(:each) do
    @shipper = assign(:shipper, stub_model(Shipper,
      :company_name => "Company Name",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Phone/)
  end
end
