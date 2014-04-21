require 'spec_helper'

describe "viewedpros/edit" do
  before(:each) do
    @viewedpro = assign(:viewedpro, stub_model(Viewedpro,
      :user_id => 1,
      :product_id => 1
    ))
  end

  it "renders the edit viewedpro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", viewedpro_path(@viewedpro), "post" do
      assert_select "input#viewedpro_user_id[name=?]", "viewedpro[user_id]"
      assert_select "input#viewedpro_product_id[name=?]", "viewedpro[product_id]"
    end
  end
end
