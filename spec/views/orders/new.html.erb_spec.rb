require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :custID => 1,
      :orderNumber => 1,
      :payID => 1,
      :shipperID => 1,
      :salesTax => 1.5,
      :status => "MyString",
      :error => "MyText",
      :fulfilled => false,
      :deleted => false,
      :paid => false
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_custID[name=?]", "order[custID]"
      assert_select "input#order_orderNumber[name=?]", "order[orderNumber]"
      assert_select "input#order_payID[name=?]", "order[payID]"
      assert_select "input#order_shipperID[name=?]", "order[shipperID]"
      assert_select "input#order_salesTax[name=?]", "order[salesTax]"
      assert_select "input#order_status[name=?]", "order[status]"
      assert_select "textarea#order_error[name=?]", "order[error]"
      assert_select "input#order_fulfilled[name=?]", "order[fulfilled]"
      assert_select "input#order_deleted[name=?]", "order[deleted]"
      assert_select "input#order_paid[name=?]", "order[paid]"
    end
  end
end
