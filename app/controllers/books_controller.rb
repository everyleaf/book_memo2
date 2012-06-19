#coding: utf-8

class BooksController < ApplicationController
  before_filter :find_book, :only => [:show, :destroy, :edit, :update]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  # GET /books/new.json
  def new
    @book = Book.new
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
        redirect_to @book, :notice => "Completed Registering"
      else
        render :new
      end
    end
  end

  # PUT /books/1
  # PUT /books/1.json
  def update
      if @book.update_attributes(params[:book])
        redirect_to @book, :notice =>"Completed Updating"
      else
        render :edit
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
