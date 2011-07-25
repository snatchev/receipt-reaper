class ReceiptsController < ApplicationController
  def index
    @receipt = Receipt.new
    @receipts = Receipt.all
    @total = Receipt.sum(:amount)
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

  def edit
    @receipt = Receipt.find(params[:id])
    @receipts = Receipt.all
    render :action => 'index'
  end

  def update
    @receipt = Receipt.find(params[:id])
    if @receipt.update_attributes(params[:receipt])
      redirect_to receipts_path
    else
      @receipts = Receipt.all
      render :action => 'index'
    end
  end

  def destroy
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    redirect_to receipts_path
  end

end
