module Admin::AdminHelper
  
  def sidebar_link_to(label, path, icon=nil)
    label = "<i class='icon-#{ icon }'></i> #{ label }" if(icon)
    if(current_page?(path) || params[:controller] == path.gsub(/^\/|\/$/, ''))
      content_tag(:li, link_to(raw(label), path), :class => 'active') 
    else
      content_tag(:li, link_to(raw(label), path)) 
    end
  end

  def sidebar_divider
    content_tag(:li, raw('<hr>'), :class => 'divider')
  end
  
end
