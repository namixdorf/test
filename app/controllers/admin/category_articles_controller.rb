class Admin::CategoryArticlesController < Admin::AdminController
private
  def set_klass
    @klass = CategoryArticle
  end
end
