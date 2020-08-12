class CategoriesController < ApplicationController

  before_action :set_category, only: [:update, :show, :edit, :destroy]

  def index
    @categories = Category.all
  end

  def create
    category = Category.create(params_categories)
    redirect_to category_path(category.id)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def update
    @category.update(params_categories)
    redirect_to categories_path
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private 
  def params_categories
    params.require(:category).permit(:name, :slug)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
