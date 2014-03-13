class Admin::AdminController < ApplicationController
  layout 'admin/application'
  
  before_filter :load_user
  
  before_filter :set_body_id
  before_filter :set_klass
  before_filter :set_form_param, :only => [:new, :create, :edit, :update]
  before_filter :set_header
  before_filter :load_object, :only => [:edit, :update, :destroy]
  
  def index
    @items = @klass.sorted.page(params[:page])
    render :file => 'admin/shared/index'
  end
  
  def new
    @object = @klass.new
    render :file => 'admin/shared/form'
  end
  
  def create
    @object = @klass.new(params[@form_param])
    if @object.save
      flash_success("#{klass_header} successfully created!")
      redirect_to :action => :index
    else
      render :file => 'admin/shared/form'
    end
  end
  
  def edit
    render :file => 'admin/shared/form'
  end
  
  def update
    if @object.update_attributes(params[@form_param])
      flash_success("#{klass_header} successfully updated!")
      redirect_to :action => :index
    else
      render :file => 'admin/shared/form'
    end
  end
  
  def sort
    @items = @klass.sorted.all
    render :file => 'admin/shared/sort'
  end
  
  def apply_sort
    params["item"].each_with_index { |x, i|
      m = @klass.find(x)
      m.update_attribute(:position, i)
    }
    render :text => ''
  end
  
  def destroy    
    if @object.destroy
      flash_success("#{klass_header} successfully deleted!")
    else
      flash_error("Unable to delete #{klass_header}")
    end
    redirect_to :action => :index
  end
  
private
  
  def set_body_id
    # overwrite in your controller
    @body_id = 'cms'
  end

  def set_klass
    # overwrite in your controller
  end
  
  def set_form_param
    # optionally overwrite in your controllers
    @form_param = ActiveModel::Naming.singular(@klass)
  end
  
  def set_header
    # optionally overwrite in your controllers
    @header = (@object ? object_header : klass_header.pluralize) rescue 'CMS'
  end
  
  def load_object
    # default lookup by ID
    # optionally overwrite in your controllers
    @object = @klass.find(params[:id]) rescue nil
    render_404 unless @object
  end

  def object_header
    "#{@object.id ? 'Edit' : 'Create'} #{@object.class.name.titleize}"
  end
  
  def klass_header
    @klass.name.titleize
  end
  
  def load_user
    unless @user = User.find(session[:user_id]) rescue nil
      reset_session
      redirect_to(new_admin_session_path) and return
    end
  end
  
  def log_in_user(user, redirect=true)
    session[:user_id] = user.id
    redirect_to(admin_root_path) if redirect
  end
  
  def logged_in?
    !session[:user_id].blank? && !@user.nil?
  end
  helper_method :logged_in?
  
end
