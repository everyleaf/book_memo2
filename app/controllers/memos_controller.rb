class MemosController < ApplicationController
  def create
    begin
      @book = Book.find(params[:memo].delete(:book_id))
      @memo = @book.memos.build(params[:memo])
      if @memo.save
        redirect_to @book
      else
        @book.memos.delete(@memo)
        render "books/show"
      end
      
    rescue ActiveRecord::RecordNotFound
      render :text => "Not Found", :status => 404
    end
  end
  
  def destroy
    @memo = Memo.find(params[:id])
    if @memo.destroy
      redirect_to @memo.book
      
    else
      render :text => "Internal Server Error", :status => 500
    end
  end
end
