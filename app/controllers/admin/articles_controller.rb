class Admin::ArticlesController < Admin::AdminController

private
  def set_klass
    @klass = Article
  end

  def load_object 
    @object = Article.find_by_url_slug(params[:id])
    render 'admin/shared/form'
  end
end
