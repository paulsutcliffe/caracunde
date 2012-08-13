require "spec_helper"

describe MusicasController do
  describe "routing" do

    it "routes to #index" do
      get("/musicas").should route_to("musicas#index")
    end

    it "routes to #new" do
      get("/musicas/new").should route_to("musicas#new")
    end

    it "routes to #show" do
      get("/musicas/1").should route_to("musicas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/musicas/1/edit").should route_to("musicas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/musicas").should route_to("musicas#create")
    end

    it "routes to #update" do
      put("/musicas/1").should route_to("musicas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/musicas/1").should route_to("musicas#destroy", :id => "1")
    end

  end
end
