class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :prepare_for_mobile
  before_filter :get_quotes
  
private

  def get_quotes
    @quotes = Quote.select(['author', 'text']).to_json
    @videos = Video.all.to_json
  end

  def set_flash(notice, options={})
    klass = options[:class] || 'notice'
    now   = options[:now] || false
    if now
      flash.now[:class]   = klass
      flash.now[:notice]  = notice
    else
      flash[:class]       = klass
      flash[:notice]      = notice
    end
  end
  def flash_success(notice, options={}); set_flash(notice, {:class => 'success',  :now => false}.update(options)); end
  def flash_error(notice, options={});   set_flash(notice, {:class => 'error',    :now => false}.update(options)); end
  def flash_notice(notice, options={});  set_flash(notice, {:class => 'notice',   :now => false}.update(options)); end
  
  def render_404
    render(:file => "#{Rails.root}/public/404.html", :layout => false, :status => 404)
  end
  
  def mobile?
    session[:mobile_param] = params[:mobile] if params[:mobile]
    session[:mobile_param] == "1" || !(request.user_agent =~ /Mobile|webOS|android|blackberry|symbian/i).nil?
  end
  helper_method :mobile?

  # Don't necessarily need this if using responsive design
  # def prepare_for_mobile
  #   request.format = :mobile if mobile?
  # end
    
end
