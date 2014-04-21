require 'spec_helper'

describe "Shippers" do
  describe "GET /shippers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get shippers_path
      response.status.should be(200)
    end
  end
end
