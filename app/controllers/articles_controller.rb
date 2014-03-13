class ArticlesController < ApplicationController
  caches_page :show
  def show
    @category = Category.find_from_url(params[:category_id])
    @article = Article.find_by_url_slug(params[:id])   
  end
end
