require "spec_helper"

describe CartItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/cart_items").should route_to("cart_items#index")
    end

    it "routes to #new" do
      get("/cart_items/new").should route_to("cart_items#new")
    end

    it "routes to #show" do
      get("/cart_items/1").should route_to("cart_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cart_items/1/edit").should route_to("cart_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cart_items").should route_to("cart_items#create")
    end

    it "routes to #update" do
      put("/cart_items/1").should route_to("cart_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cart_items/1").should route_to("cart_items#destroy", :id => "1")
    end

  end
end
