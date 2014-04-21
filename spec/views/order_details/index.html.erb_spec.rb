require 'spec_helper'

describe "order_details/index" do
  before(:each) do
    assign(:order_details, [
      stub_model(OrderDetail,
        :orderID => 1,
        :productID => 2,
        :orderNumber => 3,
        :price => 1.5,
        :quantity => 4,
        :discount => 1.5,
        :total => 1.5,
        :IDSKU => 5,
        :size => "Size",
        :color => "Color"
      ),
      stub_model(OrderDetail,
        :orderID => 1,
        :productID => 2,
        :orderNumber => 3,
        :price => 1.5,
        :quantity => 4,
        :discount => 1.5,
        :total => 1.5,
        :IDSKU => 5,
        :size => "Size",
        :color => "Color"
      )
    ])
  end

  it "renders a list of order_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
