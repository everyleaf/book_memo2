class BoooooooksController < ApplicationController
  # GET /boooooooks
  # GET /boooooooks.json
  def index
    @boooooooks = Boooooook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boooooooks }
    end
  end

  # GET /boooooooks/1
  # GET /boooooooks/1.json
  #def show
  #  @boooooook = Boooooook.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @boooooook }
#    end
#  end

  # GET /boooooooks/new
  # GET /boooooooks/new.json
  def new
    @boooooook = Boooooook.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /boooooooks/1/edit
#  def edit
#    @boooooook = Boooooook.find(params[:id])
#  end

  # POST /boooooooks
  # POST /boooooooks.json
  def create
    @boooooook = Boooooook.new(params[:boooooook])

    if @boooooook.save
      logger.debug boooooooks_index_url
      #format.html { redirect_to @boooooook, notice: 'Boooooook was successfully created.' }
      redirect_to boooooooks_index_url
    else
      render action: "new" 
    end
  end

  # PUT /boooooooks/1
  # PUT /boooooooks/1.json
#  def update
#    @boooooook = Boooooook.find(params[:id])
#
#    respond_to do |format|
#      if @boooooook.update_attributes(params[:boooooook])
#        format.html { redirect_to @boooooook, notice: 'Boooooook was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @boooooook.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # DELETE /boooooooks/1
  # DELETE /boooooooks/1.json
  def destroy
    @boooooook = Boooooook.find(params[:id])
    @boooooook.destroy

    respond_to do |format|
      format.html { redirect_to boooooooks_index_url }
      format.json { head :no_content }
    end
  end
end
