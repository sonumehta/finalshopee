require "spec_helper"

describe ViewedprosController do
  describe "routing" do

    it "routes to #index" do
      get("/viewedpros").should route_to("viewedpros#index")
    end

    it "routes to #new" do
      get("/viewedpros/new").should route_to("viewedpros#new")
    end

    it "routes to #show" do
      get("/viewedpros/1").should route_to("viewedpros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/viewedpros/1/edit").should route_to("viewedpros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/viewedpros").should route_to("viewedpros#create")
    end

    it "routes to #update" do
      put("/viewedpros/1").should route_to("viewedpros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/viewedpros/1").should route_to("viewedpros#destroy", :id => "1")
    end

  end
end
