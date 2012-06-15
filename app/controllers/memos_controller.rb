class MemosController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @memo = @book.memos.new
  end

  def create
    @book = Book.find(params[:book_id])
    @memo = @book.memos.new(params[:memo])
    if @memo.save
      redirect_to book_path(@book), :notice => "Registered the memo."
    else
      render :new
    end
  end
 
  def edit
    @book = Book.find(params[:book_id])
    @memo = @book.memos.find(params[:id])
  end

  def update
    @book = Book.find(params[:book_id])
    @memo = @book.memos.find(params[:id])
    if @memo.update_attributes(params[:memo])
      redirect_to book_path(@book), :notice => "Update a memo."
    else
      render :action => "Edit"
    end
  end
 
  def destroy
    @book = Book.find(params[:book_id])
    @memo = @book.memos.find(params[:id])
    @memo.destroy
    redirect_to book_path(@book)
  end
end
