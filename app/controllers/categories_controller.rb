class CategoriesController < ApplicationController
  caches_page :index, :show
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_from_url(params[:id])
  end

end
