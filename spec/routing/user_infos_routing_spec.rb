require "spec_helper"

describe UserInfosController do
  describe "routing" do

    it "routes to #index" do
      get("/user_infos").should route_to("user_infos#index")
    end

    it "routes to #new" do
      get("/user_infos/new").should route_to("user_infos#new")
    end

    it "routes to #show" do
      get("/user_infos/1").should route_to("user_infos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_infos/1/edit").should route_to("user_infos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_infos").should route_to("user_infos#create")
    end

    it "routes to #update" do
      put("/user_infos/1").should route_to("user_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_infos/1").should route_to("user_infos#destroy", :id => "1")
    end

  end
end
