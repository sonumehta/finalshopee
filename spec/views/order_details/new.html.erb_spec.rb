require 'spec_helper'

describe "order_details/new" do
  before(:each) do
    assign(:order_detail, stub_model(OrderDetail,
      :orderID => 1,
      :productID => 1,
      :orderNumber => 1,
      :price => 1.5,
      :quantity => 1,
      :discount => 1.5,
      :total => 1.5,
      :IDSKU => 1,
      :size => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new order_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_details_path, "post" do
      assert_select "input#order_detail_orderID[name=?]", "order_detail[orderID]"
      assert_select "input#order_detail_productID[name=?]", "order_detail[productID]"
      assert_select "input#order_detail_orderNumber[name=?]", "order_detail[orderNumber]"
      assert_select "input#order_detail_price[name=?]", "order_detail[price]"
      assert_select "input#order_detail_quantity[name=?]", "order_detail[quantity]"
      assert_select "input#order_detail_discount[name=?]", "order_detail[discount]"
      assert_select "input#order_detail_total[name=?]", "order_detail[total]"
      assert_select "input#order_detail_IDSKU[name=?]", "order_detail[IDSKU]"
      assert_select "input#order_detail_size[name=?]", "order_detail[size]"
      assert_select "input#order_detail_color[name=?]", "order_detail[color]"
    end
  end
end
