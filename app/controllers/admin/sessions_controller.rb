class Admin::SessionsController < Admin::AdminController
  
  layout false
  skip_filter :load_user
  
  def new
    @object = @klass.new
  end
  
  def create
    if @object = @klass.authenticate(params[@form_param][:email], params[@form_param][:password])
      flash_success("You have been logged in.")
      log_in_user(@object)
    else
      @object = @klass.new(params[@form_param])
      flash_error("Invalid credentials, please try again!", {:now => true})
      render :new
    end    
  end
  
  def logout
    reset_session
    flash_success("You have been logged out.")
    redirect_to(new_admin_session_path)
  end

private

  def set_klass
    @klass  = User
  end  
    
end
