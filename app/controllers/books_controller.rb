class BooksController < ApplicationController
  before_filter :find_book, :only => [:show, :destroy, :edit, :update]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @books }
      format.json { render json: @books }
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render xml: @book }
      format.json { render json: @book }
    end
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render xml: @book }
      format.json { render json: @book }
    end
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.xml { render xml: @book, status: :created, location: @book }
        format.json { render json: @book, status: :created, location: @book }
      else
#        format.html { render action: "new" }
        format.html { render :new }
        format.xml { render xml: @book.errors, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.xml { head :no_content }
        format.json { head :no_content }
      else
#        format.html { render action: "edit" }
        format.html { render :edit }
        format.xml { render xml: @book.errors, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.xml { head :no_content }
      format.json { head :no_content }
    end
  end

  private
  def find_book
    @book = Book.find(params[:id])
  end
end
