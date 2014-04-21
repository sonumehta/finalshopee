require 'spec_helper'

describe "suppliers/edit" do
  before(:each) do
    @supplier = assign(:supplier, stub_model(Supplier,
      :company_name => "MyString",
      :email => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :pincode => 1,
      :phone => 1
    ))
  end

  it "renders the edit supplier form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", supplier_path(@supplier), "post" do
      assert_select "input#supplier_company_name[name=?]", "supplier[company_name]"
      assert_select "input#supplier_email[name=?]", "supplier[email]"
      assert_select "input#supplier_address1[name=?]", "supplier[address1]"
      assert_select "input#supplier_address2[name=?]", "supplier[address2]"
      assert_select "input#supplier_city[name=?]", "supplier[city]"
      assert_select "input#supplier_state[name=?]", "supplier[state]"
      assert_select "input#supplier_pincode[name=?]", "supplier[pincode]"
      assert_select "input#supplier_phone[name=?]", "supplier[phone]"
    end
  end
end
