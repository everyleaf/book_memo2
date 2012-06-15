require "spec_helper"

describe MemosController do
  
  describe "routing" do

    it "routes to #index" do
      get("/books/1/memos").should route_to("memos#index", :book_id => "1")
    end

    it "routes to #new" do
      get("/books/1/memos/new").should route_to("memos#new", :book_id => "1")
    end
    
    it "routes to #create" do
      post("/books/1/memos").should route_to("memos#create", :book_id => "1" )
    end
    
    it "routes to #destroy" do
      delete("/books/1/memos/1").should route_to("memos#destroy", :book_id => "1", :id => "1")
    end

  end
end
