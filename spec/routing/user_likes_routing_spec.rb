require "spec_helper"

describe UserLikesController do
  describe "routing" do

    it "routes to #index" do
      get("/user_likes").should route_to("user_likes#index")
    end

    it "routes to #new" do
      get("/user_likes/new").should route_to("user_likes#new")
    end

    it "routes to #show" do
      get("/user_likes/1").should route_to("user_likes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_likes/1/edit").should route_to("user_likes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_likes").should route_to("user_likes#create")
    end

    it "routes to #update" do
      put("/user_likes/1").should route_to("user_likes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_likes/1").should route_to("user_likes#destroy", :id => "1")
    end

  end
end
