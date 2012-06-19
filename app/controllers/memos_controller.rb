#coding: utf-8

class MemosController < ApplicationController
  before_filter :find_book
  before_filter :find_memo, :only =>[:edit, :update, :destroy]

  def new
   @memo = @book.memos.new
  end

  def create
   @memo = @book.memos.new(params[:memo])
   if @memo.save
    redirect_to book_path(@book), :notice => "Completed Registering Memo."
   else
    render :new
   end
  end

  def edit
  end

  def update
    if @memo.update_attributes(params[:memo])
      redirect_to book_path(@book), :notice => "メモを更新しました。"
    else
      render :action => "edit"
    end
  end

  def destroy
    @memo.destroy
    redirect_to book_path(@book)
  end

  private
  def find_book
   @book = Book.find(params[:book_id])
  end

  def find_memo
   @memo = @book.memos.find(params[:id])
  end

end
