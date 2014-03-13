module TwitterBootstrap
  module FormHelper
    
    def control_group(object_name, method, options={}, &block)
      
      error_messages  = options.delete(:errors).join(', ') rescue ''
      is_required     = options[:required] != nil && options[:required] != false
                        options.delete(:required)

      input_type = options.delete(:as) if options[:as].present?

      
      css_class = 'control-group'
      css_class += ' error' unless(error_messages.blank?)
      
      # build the controls div
      if(block_given?)
        input = capture(&block)
      elsif input_type == :text_area
        input = text_area(object_name, method, options)
      elsif input_type == :file_field
        input = file_field(object_name, method, options)
      else
        input = text_field(object_name, method, options)
      end
      
      options.delete('data-help')
      
      # indicator icons
      required_indicator  = ''
      required_indicator  = content_tag(:i, '', :class => 'icon-star', :rel => 'tooltip', 'data-original-title' => 'required') if(is_required)
      
      indicators          = content_tag(:span, (required_indicator), :class => 'pull-right')
      
      # error message
      error_inline = content_tag(:span, error_messages, :class => 'help-inline')
      
      controls = content_tag(:div, (input + error_inline), { :class => 'controls' })
      
      options[:class] ||= ""
      options[:class] += " nofloat control-label"
      
      # <i class='icon-star' rel="tooltip" data-original-title="required"></i>
      # <i class='icon-question-sign' rel="tooltip" data-original-title="must be at least 4 characters long"></i>
      
      # create the label
      label_text = options.delete(:label)
      
      the_label = if(object_name && method && label_text)
                    label(object_name, method, label_text, options)
                  elsif(object_name && method)
                    label(object_name, method, options)
                  else
                    ''
                  end

      unless(the_label.blank?)
        the_label = the_label.sub(/\<\/label\>/i, raw(indicators) + raw('</label>'))
      end
      
      # package it all up
      content_tag(:div, raw(the_label + controls), :class => css_class)
    end

  end
end

module TwitterBootstrap::FormBuilder
  def control_group(method, options={}, &block)
    options = objectify_options(options)
    options[:errors] = @object.errors[method]
    options[:required] ||= false
    @template.control_group(@object_name, method, options, &block)
  end
end
