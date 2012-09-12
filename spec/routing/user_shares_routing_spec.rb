require "spec_helper"

describe UserSharesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_shares").should route_to("user_shares#index")
    end

    it "routes to #new" do
      get("/user_shares/new").should route_to("user_shares#new")
    end

    it "routes to #show" do
      get("/user_shares/1").should route_to("user_shares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_shares/1/edit").should route_to("user_shares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_shares").should route_to("user_shares#create")
    end

    it "routes to #update" do
      put("/user_shares/1").should route_to("user_shares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_shares/1").should route_to("user_shares#destroy", :id => "1")
    end

  end
end
