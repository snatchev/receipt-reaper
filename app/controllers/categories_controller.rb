class CategoriesController < ApplicationController
  def index
    @new_category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.create(params[:category])
    respond_to do |format|
      format.js { render :json => @category.to_json}
      format.html { redirect_to categories_path }
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update_attributes(params[:category])
    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end


end
