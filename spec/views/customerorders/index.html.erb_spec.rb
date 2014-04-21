require 'spec_helper'

describe "customerorders/index" do
  before(:each) do
    assign(:customerorders, [
      stub_model(Customerorder,
        :name => "Name",
        :address => "MyText",
        :email => "Email",
        :pay_type => "Pay Type"
      ),
      stub_model(Customerorder,
        :name => "Name",
        :address => "MyText",
        :email => "Email",
        :pay_type => "Pay Type"
      )
    ])
  end

  it "renders a list of customerorders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Pay Type".to_s, :count => 2
  end
end
