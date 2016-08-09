module NavLink

  # Returns a CSS class if the filename is part of the current URL
  #
  # == Parameters
  #
  #   @param filename [String] of the page to look up
  #
  # == Usage
  #
  #   {nav_active("page.html")}

  def nav_link(text, url, options={})
    if (url.instance_of? String)
      if current_resource.url == url_for(url)
        options[:class] = options[:class] ? options[:class] += ' is-active' : options[:class] = 'is-active'
        return content_tag :span, options do text end
      else
        return link_to text, url, options
      end
    elsif (url.instance_of? Array)
      if url.map { |url| url_for(url) }.include?(current_resource.url)
        options[:class] = options[:class] ? options[:class] += ' is-active' : options[:class] = 'is-active'
        return content_tag :span, options do text end
      else
        return link_to text, url, options
      end
    else
      return link_to text, url, options
    end
  end
end
