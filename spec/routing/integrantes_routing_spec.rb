require "spec_helper"

describe IntegrantesController do
  describe "routing" do

    it "routes to #index" do
      get("/integrantes").should route_to("integrantes#index")
    end

    it "routes to #new" do
      get("/integrantes/new").should route_to("integrantes#new")
    end

    it "routes to #show" do
      get("/integrantes/1").should route_to("integrantes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/integrantes/1/edit").should route_to("integrantes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/integrantes").should route_to("integrantes#create")
    end

    it "routes to #update" do
      put("/integrantes/1").should route_to("integrantes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/integrantes/1").should route_to("integrantes#destroy", :id => "1")
    end

  end
end
