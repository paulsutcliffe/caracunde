require "spec_helper"

describe InformacoesController do
  describe "routing" do

    it "routes to #index" do
      get("/informacoes").should route_to("informacoes#index")
    end

    it "routes to #new" do
      get("/informacoes/new").should route_to("informacoes#new")
    end

    it "routes to #show" do
      get("/informacoes/1").should route_to("informacoes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/informacoes/1/edit").should route_to("informacoes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/informacoes").should route_to("informacoes#create")
    end

    it "routes to #update" do
      put("/informacoes/1").should route_to("informacoes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/informacoes/1").should route_to("informacoes#destroy", :id => "1")
    end

  end
end
