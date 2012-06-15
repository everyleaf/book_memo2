class MemosController < ApplicationController

  # POST /memos
  # POST /memos.json
  def create
    @memo = Memo.new(params[:memo])

    respond_to do |format|
      if @memo.save
        #format.html { redirect_to @memo, notice: 'Memo was successfully created.' }
        format.json { render json: @memo, status: :created, location: @memo }
      else
        #format.html { render action: "new" }
        format.json { render json: @memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memos/1
  # DELETE /memos/1.json
  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy

    respond_to do |format|
      #format.html { redirect_to memos_url }
      format.json { head :no_content }
    end
  end
end
