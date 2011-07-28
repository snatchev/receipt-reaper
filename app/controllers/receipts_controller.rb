class ReceiptsController < ApplicationController
  before_filter :get_data, :only => ['index', 'edit']

  def index
  end

  def create
    @receipt = Receipt.new(params[:receipt])
    if @receipt.save
      redirect_to receipts_path
    else
      get_data
      render :action => 'index'
    end
  end

  def edit
    @receipt = Receipt.find(params[:id])
    render :action => 'index'
  end

  def update
    @receipt = Receipt.find(params[:id])
    if @receipt.update_attributes(params[:receipt])
      redirect_to receipts_path
    else
      get_data
      render :action => 'index'
    end
  end

  def destroy
    @receipt = Receipt.find(params[:id])
    @receipt.destroy
    redirect_to receipts_path
  end

  private

  def get_data
    @receipt ||= Receipt.new
    @receipts = Receipt.order(params[:sort]).all
    @accounts = Account.all
    @accounts << Account.new(:name => "-- Add New --")
    @categories = Category.all
    @categories << Category.new(:name => "-- Add New --")
    @total = Receipt.sum(:amount) / 100.0
  end

end
