require "spec_helper"

describe GuidancesController do
  describe "routing" do

    it "routes to #index" do
      get("/guidances").should route_to("guidances#index")
    end

    it "routes to #new" do
      get("/guidances/new").should route_to("guidances#new")
    end

    it "routes to #show" do
      get("/guidances/1").should route_to("guidances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guidances/1/edit").should route_to("guidances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guidances").should route_to("guidances#create")
    end

    it "routes to #update" do
      put("/guidances/1").should route_to("guidances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guidances/1").should route_to("guidances#destroy", :id => "1")
    end

  end
end
