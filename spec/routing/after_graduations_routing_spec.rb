require "spec_helper"

describe AfterGraduationsController do
  describe "routing" do

    it "routes to #index" do
      get("/after_graduations").should route_to("after_graduations#index")
    end

    it "routes to #new" do
      get("/after_graduations/new").should route_to("after_graduations#new")
    end

    it "routes to #show" do
      get("/after_graduations/1").should route_to("after_graduations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/after_graduations/1/edit").should route_to("after_graduations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/after_graduations").should route_to("after_graduations#create")
    end

    it "routes to #update" do
      put("/after_graduations/1").should route_to("after_graduations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/after_graduations/1").should route_to("after_graduations#destroy", :id => "1")
    end

  end
end
