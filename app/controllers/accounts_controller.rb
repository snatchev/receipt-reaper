class AccountsController < ApplicationController
  def create
    @account = Account.create(params[:account])
    respond_to do |format|
      format.js { render :json => @account }
    end
  end
end
