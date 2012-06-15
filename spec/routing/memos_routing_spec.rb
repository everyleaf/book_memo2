require "spec_helper"

describe MemosController do
  describe "routing" do

    it "routes to #index" do
      get("/memos").should route_to("memos#index")
    end

    it "routes to #new" do
      get("/memos/new").should route_to("memos#new")
    end

    it "routes to #show" do
      get("/memos/1").should route_to("memos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/memos/1/edit").should route_to("memos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/memos").should route_to("memos#create")
    end

    it "routes to #update" do
      put("/memos/1").should route_to("memos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/memos/1").should route_to("memos#destroy", :id => "1")
    end

  end
end
