require 'spec_helper'

describe "orders/show" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
    rendered.should match(/Status/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
