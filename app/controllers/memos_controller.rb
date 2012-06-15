class MemosController < ApplicationController
  before_filter :find_book

  def new
    @memo = @book.memos.new
  end

  def create
    @memo = @book.memos.new(params[:memo])
    if @memo.save
      redirect_to book_path(@book), :notice => 'saved memo.'
    else
      render :new
    end
  end

  def delete
  end

  private
  def find_book
    @book = Book.find(params[:book_id])
  end
end
