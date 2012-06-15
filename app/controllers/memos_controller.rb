class MemosController < ApplicationController
  before_filter :find_book

  # GET /memos/1
  # GET /memos/1.json
  def show
    #@memo = Memo.find(params[:id])
    @memo = @book.memos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @memo }
    end
  end

  # GET /memos/new
  # GET /memos/new.json
  def new
    #@memo = Memo.new
    @memo = @book.memos.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @memo }
    end
  end

  # POST /memos
  # POST /memos.json
  def create
    #@memo = Memo.new(params[:memo])
    @memo = @book.memos.build(params[:memo])

    respond_to do |format|
      if @memo.save
        format.html { redirect_to @book, notice: 'Memo was successfully created.' }
        format.json { render json: @memo, status: :created, location: @memo }
      else
        format.html { render action: "new" }
        format.json { render json: @memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memos/1
  # DELETE /memos/1.json
  def destroy
    #@memo = Memo.find(params[:id])
    @memo = @book.memos.find(params[:id])
    @memo.destroy

    respond_to do |format|
      format.html { redirect_to book_memos_url @book}
      format.json { head :no_content }
    end
  end

  def find_book
    @book = Book.find(params[:book_id])
  end
end
