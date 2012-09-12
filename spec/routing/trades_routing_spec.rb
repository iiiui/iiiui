require "spec_helper"

describe TradesController do
  describe "routing" do

    it "routes to #index" do
      get("/trades").should route_to("trades#index")
    end

    it "routes to #new" do
      get("/trades/new").should route_to("trades#new")
    end

    it "routes to #show" do
      get("/trades/1").should route_to("trades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trades/1/edit").should route_to("trades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trades").should route_to("trades#create")
    end

    it "routes to #update" do
      put("/trades/1").should route_to("trades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trades/1").should route_to("trades#destroy", :id => "1")
    end

  end
end
