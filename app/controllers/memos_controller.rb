class MemosController < ApplicationController

  before_filter :load_book

  def load_book
    @book = Book.find(params[:book_id])
  end

  # GET /memos
  # GET /memos.json
  def index
    @memos = @book.memos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @memos }
    end
  end

  # GET /memos/1
  # GET /memos/1.json
  def show
  end

  # GET /memos/new
  # GET /memos/new.json
  def new
  end

  # GET /memos/1/edit
  def edit
  end

  # POST /memos
  # POST /memos.json
  def create
    @memo = @book.memos.build(params[:memo])

    respond_to do |format|
      if @memo.save
        format.html { redirect_to @book, notice: 'Memo was successfully created.' }
        format.json { render json: @memo, status: :created, location: @memo }
      else
        format.html { render 'books/show' }
        format.json { render json: @memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /memos/1
  # PUT /memos/1.json
  def update
  end

  # DELETE /memos/1
  # DELETE /memos/1.json
  def destroy
    @memo = @book.memos.find(params[:id])
    @memo.destroy

    respond_to do |format|
      format.html { redirect_to book_url(@book) }
      format.json { head :no_content }
    end
  end
end
