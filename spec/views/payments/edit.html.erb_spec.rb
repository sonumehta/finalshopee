require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :type => "",
      :allowed => false
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do
      assert_select "input#payment_type[name=?]", "payment[type]"
      assert_select "input#payment_allowed[name=?]", "payment[allowed]"
    end
  end
end
