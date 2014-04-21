require 'spec_helper'

describe "viewedpros/new" do
  before(:each) do
    assign(:viewedpro, stub_model(Viewedpro,
      :user_id => 1,
      :product_id => 1
    ).as_new_record)
  end

  it "renders new viewedpro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", viewedpros_path, "post" do
      assert_select "input#viewedpro_user_id[name=?]", "viewedpro[user_id]"
      assert_select "input#viewedpro_product_id[name=?]", "viewedpro[product_id]"
    end
  end
end
