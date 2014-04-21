require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :custID => 1,
        :orderNumber => 2,
        :payID => 3,
        :shipperID => 4,
        :salesTax => 1.5,
        :status => "Status",
        :error => "MyText",
        :fulfilled => false,
        :deleted => false,
        :paid => false
      ),
      stub_model(Order,
        :custID => 1,
        :orderNumber => 2,
        :payID => 3,
        :shipperID => 4,
        :salesTax => 1.5,
        :status => "Status",
        :error => "MyText",
        :fulfilled => false,
        :deleted => false,
        :paid => false
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
