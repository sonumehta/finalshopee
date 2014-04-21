require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :pname => "Pname",
        :IDSKU => "",
        :supplier_id => "",
        :subcat_id => "",
        :desc => "Desc",
        :price => 1.5,
        :color => "Color",
        :discount => 1.5,
        :product_available => false,
        :discount => "",
        :picture => "Picture",
        :ranking => ""
      ),
      stub_model(Product,
        :pname => "Pname",
        :IDSKU => "",
        :supplier_id => "",
        :subcat_id => "",
        :desc => "Desc",
        :price => 1.5,
        :color => "Color",
        :discount => 1.5,
        :product_available => false,
        :discount => "",
        :picture => "Picture",
        :ranking => ""
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pname".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
