class ReceiptsController < ApplicationController
  def index
    @receipt = Receipt.new
    @receipts = Receipt.all
  end

  def create
    @receipt = Receipt.new(params[:receipt])
    if @receipt.save
      redirect_to receipts_path
    else
      @receipts = Receipt.all
      render :action => 'index'
    end
  end

end
