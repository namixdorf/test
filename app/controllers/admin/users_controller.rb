class Admin::UsersController < Admin::AdminController

private

  def set_klass
    @klass  = User
  end
    
end
