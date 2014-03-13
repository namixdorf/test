class Admin::CategoriesController < Admin::AdminController

private
  def set_klass
    @klass = Category
  end

  def load_object
    @object = Category.find_from_url(params[:id])
  end
end
