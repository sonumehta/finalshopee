require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pname/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Desc/)
    rendered.should match(/1.5/)
    rendered.should match(/Color/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(//)
    rendered.should match(/Picture/)
    rendered.should match(//)
  end
end
