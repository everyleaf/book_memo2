class MemosController < ApplicationController
  
  
  def index
    @book = Book.find(params[:book_id])
    @memos = @book.memos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @memos }
    end
  end
  
  def new
    @book = Book.find(params[:book_id])
    @memo = @book.memos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @memo }
    end
  end
  
  def create
    @book = Book.find(params[:book_id])
    @memo = @book.memos.new(params[:memo])
    
    respond_to do |format|
      if @memo.save
        format.html { redirect_to book_memos_path, notice: 'Memo was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
    
     
  end
  
  def destroy
    @book = Book.find(params[:book_id])
    @memo = @book.memos.find(params[:id])
    @memo.destroy

    respond_to do |format|
      format.html { redirect_to book_memos_path }
      format.json { head :no_content }
    end
  end
  
end
