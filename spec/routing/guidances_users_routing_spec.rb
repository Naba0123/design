require "spec_helper"

describe GuidancesUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/guidances_users").should route_to("guidances_users#index")
    end

    it "routes to #new" do
      get("/guidances_users/new").should route_to("guidances_users#new")
    end

    it "routes to #show" do
      get("/guidances_users/1").should route_to("guidances_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guidances_users/1/edit").should route_to("guidances_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guidances_users").should route_to("guidances_users#create")
    end

    it "routes to #update" do
      put("/guidances_users/1").should route_to("guidances_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guidances_users/1").should route_to("guidances_users#destroy", :id => "1")
    end

  end
end
