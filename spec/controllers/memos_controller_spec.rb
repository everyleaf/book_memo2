require 'spec_helper'

describe MemosController do
  def book_attributes
    { title: 'book title', memo: '' }
  end

  def valid_attributes(book_id)
    { book_id: book_id, body: 'memo body' }
  end

  describe "GET 'new'" do
    it "returns http success" do
      book = Book.create! book_attributes
      get :new, {:book_id => book.to_param}
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      book = Book.create! book_attributes
      memo = Memo.create! valid_attributes(book.to_param)
      post :new, {:book_id => book.to_param, :body => memo.body}
      response.should be_success
    end
  end

end
