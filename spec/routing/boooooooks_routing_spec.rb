require "spec_helper"

describe BoooooooksController do
  describe "routing" do

    it "routes to #index" do
      get("/boooooooks").should route_to("boooooooks#index")
    end

    it "routes to #new" do
      get("/boooooooks/new").should route_to("boooooooks#new")
    end

    it "routes to #show" do
      get("/boooooooks/1").should route_to("boooooooks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/boooooooks/1/edit").should route_to("boooooooks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/boooooooks").should route_to("boooooooks#create")
    end

    it "routes to #update" do
      put("/boooooooks/1").should route_to("boooooooks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/boooooooks/1").should route_to("boooooooks#destroy", :id => "1")
    end

  end
end
