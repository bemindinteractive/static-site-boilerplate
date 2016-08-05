module CustomHelpers

  def nav_link(text, url, options={})
    # Check if locale exist inside the url
    url = '/' + I18n.locale.to_s + url if I18n.locale != I18n.default_locale

    # If the current page url is equal to the url paramenter remove the link
    # and add the '.is-active' class
    if current_page.url == url or current_page.url == url + '/'
      options[:class] = options[:class] ? options[:class] += ' is-active' : options[:class] = 'is-active'
      return content_tag :span, options do text end
    else
      # else return the standar link_to helper with the parameters
      return link_to text, url, options
    end
  end

end
# page_classes().split(" ").include?(page)) ? {:class => "active"} : {}
