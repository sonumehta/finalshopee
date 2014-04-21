require "spec_helper"

describe CustomerordersController do
  describe "routing" do

    it "routes to #index" do
      get("/customerorders").should route_to("customerorders#index")
    end

    it "routes to #new" do
      get("/customerorders/new").should route_to("customerorders#new")
    end

    it "routes to #show" do
      get("/customerorders/1").should route_to("customerorders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/customerorders/1/edit").should route_to("customerorders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/customerorders").should route_to("customerorders#create")
    end

    it "routes to #update" do
      put("/customerorders/1").should route_to("customerorders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/customerorders/1").should route_to("customerorders#destroy", :id => "1")
    end

  end
end
