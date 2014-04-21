require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :pname => "MyString",
      :IDSKU => "",
      :supplier_id => "",
      :subcat_id => "",
      :desc => "MyString",
      :price => 1.5,
      :color => "MyString",
      :discount => 1.5,
      :product_available => false,
      :discount => "",
      :picture => "MyString",
      :ranking => ""
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_pname[name=?]", "product[pname]"
      assert_select "input#product_IDSKU[name=?]", "product[IDSKU]"
      assert_select "input#product_supplier_id[name=?]", "product[supplier_id]"
      assert_select "input#product_subcat_id[name=?]", "product[subcat_id]"
      assert_select "input#product_desc[name=?]", "product[desc]"
      assert_select "input#product_price[name=?]", "product[price]"
      assert_select "input#product_color[name=?]", "product[color]"
      assert_select "input#product_discount[name=?]", "product[discount]"
      assert_select "input#product_product_available[name=?]", "product[product_available]"
      assert_select "input#product_discount[name=?]", "product[discount]"
      assert_select "input#product_picture[name=?]", "product[picture]"
      assert_select "input#product_ranking[name=?]", "product[ranking]"
    end
  end
end
