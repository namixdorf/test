class BrowseController < ApplicationController
  
  caches_page :index, :categories, :get_inspired, :finding
  
  def index
    # homepage
    render layout: "basetablet"
  end

  def categories
    @categories = Category.all
  end

  def get_inspired
  end

  def finding
    @categories = Category.all
  end
  
  def sitemap
    # http://www.sitemaps.org/protocol.php
    respond_to do |format|
      format.xml
    end
  end
  
end
