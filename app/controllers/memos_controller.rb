class MemosController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @memo = @book.memos.new
  end

  def create
    @book = Book.find(params[:book_id])
    @memo = @book.memos.new(params[:memo])
    if @memo.save
      redirect_to book_path(@book), :notice => "New memo has been added."
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:book_id])
    @memo = @book.memos.find(params[:id])
    @memo.destroy
    redirect_to book_path(@book)
  end
end