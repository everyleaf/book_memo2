require 'spec_helper'

describe MemosController do
  def valid_attributes
    { title: 'book title', memo: '' }
  end

  describe "GET 'new'" do
    it "returns http success" do
      book = Book.create! valid_attributes
      get :new, {:book_id => book.to_param}
      response.should be_success
    end
  end

  describe "GET 'delete'" do
    it "returns http success" do
      get 'delete'
      response.should be_success
    end
  end

end
