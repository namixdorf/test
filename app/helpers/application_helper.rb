module ApplicationHelper
  
  # Developed by Neal White, 03/16/2008
  # <b>Description:</b> Simple helper method for creating content_for blocks with a single method call.
  #
  # <b>Arguments:</b> name = name of the content_for block, content = content of the block
  def content_for_wrapper(name, content)
    content_for(name) { content }
  end
  
  # Alias meta_tag method to content_for_wrapper, as it performs the same function
  alias_method :meta_tag, :content_for_wrapper
  
  # Developed by Neal White, 03/16/2008
  # <b>Description:</b> Helper for setting unique page titles from a view.
  def page_title(title)
    content_for_wrapper(:page_title, title)
  end
  
  # Developed by Neal White, 03/16/2008
  # <b>Description:</b> Helper for setting the id of the HTML <body> tag from a view.
  def body_id(id_str)
    content_for_wrapper(:body_id, id_str)
  end
  
  # Developed by Neal White, 07/13/2008
  # <b>Description:</b> Helper for setting the meta description content from a view.
  def meta_description(content)
    content_for_wrapper(:meta_description, content)
  end
  
  def meta_keywords(keywords)
    keywords = keywords.join(', ') if keywords.is_a?(Array)
    content_for_wrapper(:meta_keywords, keywords)
  end
  
  def set_meta_tags(object)
    unless object.blank?
      page_title(object.meta_title) unless object.meta_title.blank?
      meta_description(object.meta_description) unless object.meta_description.blank?
      meta_keywords(object.meta_keywords) unless object.meta_keywords.blank?
    end
  end
  
  def google_analytics
    if GOOGLE_ANALYTICS_ID
      raw %Q{ <script type="text/javascript">
            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', '#{GOOGLE_ANALYTICS_ID}']);
            _gaq.push(['_trackPageview']);
            (function() {
              var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
              ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
              var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();
          </script>}
    end
  end
  
  def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end
  
end
