require "spec_helper"

describe ShippersController do
  describe "routing" do

    it "routes to #index" do
      get("/shippers").should route_to("shippers#index")
    end

    it "routes to #new" do
      get("/shippers/new").should route_to("shippers#new")
    end

    it "routes to #show" do
      get("/shippers/1").should route_to("shippers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shippers/1/edit").should route_to("shippers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shippers").should route_to("shippers#create")
    end

    it "routes to #update" do
      put("/shippers/1").should route_to("shippers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shippers/1").should route_to("shippers#destroy", :id => "1")
    end

  end
end
