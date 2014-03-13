class Admin::VideosController < Admin::AdminController
private
  def set_klass
    @klass = Video
  end
end
