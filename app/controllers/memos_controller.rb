class MemosController < ApplicationController

  # GET /memos/new
  # GET /memos/new.json
  def new
    #Return to mainmenu if book value in session is nil
    if session[:book_id].nil?
      redirect_to books_path
      return
    end

    @memo = Memo.new
    @book = Book.find(session[:book_id])
    @memo.book_id = @book.id

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render xml: @memo }
      format.json { render json: @memo }
    end
  end

  # POST /memos
  # POST /memos.json
  def create
    #Return to mainmenu if book value in session is nil
    if session[:book_id].nil?
      redirect_to books_path
      return
    end

    @memo = Memo.new(params[:memo])
    @book = Book.find(session[:book_id])
    @memo.book_id = @book.id

    #Return to mainmenu if already logged in
    if @memo.book_id.nil?
      redirect_to @book
      return
    end

    respond_to do |format|
      if @memo.save
        format.html { redirect_to @book }
        format.xml { render xml: @memo, status: :created, location: @memo }
        format.json { render json: @memo, status: :created, location: @memo }
      else
        format.html { render action: "new" }
        format.xml { render xml: @memo.errors, status: :unprocessable_entity }
        format.json { render json: @memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memos/1
  # DELETE /memos/1.json
  def destroy
    #Return to mainmenu if book value in session is nil
    if session[:book_id].nil?
      redirect_to books_path
      return
    end

    @memo = Memo.find(params[:id])
    @book = Book.find(session[:book_id])
    @memo.destroy

    respond_to do |format|
      format.html { redirect_to @book }
      format.xml { head :no_content }
      format.json { head :no_content }
    end
  end

end
