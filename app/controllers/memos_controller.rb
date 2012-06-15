class MemosController < ApplicationController
  before_filter :find_book
  before_filter :find_memo, :only => [:destroy]

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

  def destroy
    @memo.destroy
    redirect_to book_path(@book), :notice => 'deleated memo.'
  end

  private
  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_memo
    @memo = Memo.find(params[:id])
  end
end
