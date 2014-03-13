class Admin::DashboardController < Admin::AdminController
  
  skip_filter :set_klass
  
  def index
    
  end

private
  
  def set_header
    @header = "CMS Dashboard"
  end
  
end
