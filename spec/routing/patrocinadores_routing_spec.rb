require "spec_helper"

describe PatrocinadoresController do
  describe "routing" do

    it "routes to #index" do
      get("/patrocinadores").should route_to("patrocinadores#index")
    end

    it "routes to #new" do
      get("/patrocinadores/new").should route_to("patrocinadores#new")
    end

    it "routes to #show" do
      get("/patrocinadores/1").should route_to("patrocinadores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/patrocinadores/1/edit").should route_to("patrocinadores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/patrocinadores").should route_to("patrocinadores#create")
    end

    it "routes to #update" do
      put("/patrocinadores/1").should route_to("patrocinadores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/patrocinadores/1").should route_to("patrocinadores#destroy", :id => "1")
    end

  end
end
