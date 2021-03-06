class CategoriesController < ApplicationController
  respond_to :json

  def index
    # render :json => Category.all.includes(:todos)
    @categories = Category.all.includes(:todos)
    logger.info @categories.to_json
    respond_with @categories
  end

  def show
    respond_with Category.find(params[:id])
  end

  def create
    respond_with Category.create(category_params)
  end

  def update
    respond_with Category.update_attributes(category_params)
  end

  def destroy
    respond_with Category.destroy(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :position)
  end

end
