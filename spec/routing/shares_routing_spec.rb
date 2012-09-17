require "spec_helper"

describe SharesController do
  describe "routing" do

    it "routes to #index" do
      get("/shares").should route_to("shares#index")
    end

    it "routes to #new" do
      get("/shares/new").should route_to("shares#new")
    end

    it "routes to #show" do
      get("/shares/1").should route_to("shares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shares/1/edit").should route_to("shares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shares").should route_to("shares#create")
    end

    it "routes to #update" do
      put("/shares/1").should route_to("shares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shares/1").should route_to("shares#destroy", :id => "1")
    end

  end
end
