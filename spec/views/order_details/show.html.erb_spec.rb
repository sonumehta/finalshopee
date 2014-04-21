require 'spec_helper'

describe "order_details/show" do
  before(:each) do
    @order_detail = assign(:order_detail, stub_model(OrderDetail,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/1.5/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/5/)
    rendered.should match(/Size/)
    rendered.should match(/Color/)
  end
end
