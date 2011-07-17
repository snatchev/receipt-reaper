class CategoriesController < ApplicationController
  def create
    @category = Category.create(:name => params[:category_name])
    respond_to do |format|
      format.js { render :json => @category.to_json}
    end
  end
end
