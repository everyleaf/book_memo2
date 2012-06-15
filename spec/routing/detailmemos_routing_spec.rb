require "spec_helper"

describe DetailmemosController do
  describe "routing" do

    it "routes to #index" do
      get("/detailmemos").should route_to("detailmemos#index")
    end

    it "routes to #new" do
      get("/detailmemos/new").should route_to("detailmemos#new")
    end

    it "routes to #show" do
      get("/detailmemos/1").should route_to("detailmemos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/detailmemos/1/edit").should route_to("detailmemos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/detailmemos").should route_to("detailmemos#create")
    end

    it "routes to #update" do
      put("/detailmemos/1").should route_to("detailmemos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/detailmemos/1").should route_to("detailmemos#destroy", :id => "1")
    end

  end
end
