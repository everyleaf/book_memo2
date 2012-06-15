class DetailmemosController < ApplicationController
  # GET /detailmemos/new
  # GET /detailmemos/new.json
  def new
    @detailmemo = Detailmemo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detailmemo }
    end
  end

  # POST /detailmemos
  # POST /detailmemos.json
  def create
    @detailmemo = Detailmemo.new(params[:detailmemo])

    respond_to do |format|
      if @detailmemo.save
        format.html { redirect_to Book, notice: 'Detailmemo was successfully created.' }
        format.json { render json: @detailmemo, status: :created, location: @detailmemo }
      else
        format.html { render action: "new" }
        format.json { render json: @detailmemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detailmemos/1
  # DELETE /detailmemos/1.json
  def destroy
    @detailmemo = Detailmemo.find(params[:id])
    @detailmemo.destroy

    respond_to do |format|
      format.html { redirect_to book_path(@detailmemo[:book_id]) }
      format.json { head :no_content }
    end
  end
end
