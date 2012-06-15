require 'spec_helper'

describe BooksController do
  
  def valid_attributes
    { :title => 'test title', :author => 'test author', :purchase_date => '2012-06-06' }
  end
    
  describe "GET index" do
    it "displays all books" do
      book = Book.create! valid_attributes
      get :index, {}
      assigns(:books).should eq([book])
    end
  end

  describe "GET show" do
    it "displays a book" do
      book = Book.create! valid_attributes
      get :show, {:id => book.to_param}
      assigns(:book).should eq(book)
    end
  end

  describe "GET new" do
    it "displays new book screen" do
      get :new, {}
      assigns(:book).should be_a_new(Book)
    end
  end

  describe "GET edit" do
    it "edits an existing book" do
      book = Book.create! valid_attributes
      get :edit, {:id => book.to_param}
      assigns(:book).should eq(book)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Book" do
        expect {
          post :create, {:book => valid_attributes}
        }.to change(Book, :count).by(1)
      end

      it "assigns a newly created book as @book" do
        post :create, {:book => valid_attributes}
        assigns(:book).should be_a(Book)
        assigns(:book).should be_persisted
      end

      it "redirects to the created book" do
        post :create, {:book => valid_attributes}
        response.should redirect_to(Book.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved book as @book" do
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        post :create, {:book => {}}
        assigns(:book).should be_a_new(Book)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        post :create, {:book => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested book" do
        book = Book.create! valid_attributes
        # Assuming there are no other books in the database, this
        # specifies that the Book created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Book.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => book.to_param, :book => {'these' => 'params'}}
      end

      it "assigns the requested book as @book" do
        book = Book.create! valid_attributes
        put :update, {:id => book.to_param, :book => valid_attributes}
        assigns(:book).should eq(book)
      end

      it "redirects to the book" do
        book = Book.create! valid_attributes
        put :update, {:id => book.to_param, :book => valid_attributes}
        response.should redirect_to(book)
      end
    end

    describe "with invalid params" do
      it "assigns the book as @book" do
        book = Book.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        put :update, {:id => book.to_param, :book => {}}
        assigns(:book).should eq(book)
      end

      it "re-renders the 'edit' template" do
        book = Book.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        put :update, {:id => book.to_param, :book => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested book" do
      book = Book.create! valid_attributes
      expect {
        delete :destroy, {:id => book.to_param}
      }.to change(Book, :count).by(-1)
    end

    it "redirects to the books list" do
      book = Book.create! valid_attributes
      delete :destroy, {:id => book.to_param}
      response.should redirect_to(books_url)
    end
  end
  
end