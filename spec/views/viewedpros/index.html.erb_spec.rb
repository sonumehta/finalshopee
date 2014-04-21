require 'spec_helper'

describe "viewedpros/index" do
  before(:each) do
    assign(:viewedpros, [
      stub_model(Viewedpro,
        :user_id => 1,
        :product_id => 2
      ),
      stub_model(Viewedpro,
        :user_id => 1,
        :product_id => 2
      )
    ])
  end

  it "renders a list of viewedpros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
