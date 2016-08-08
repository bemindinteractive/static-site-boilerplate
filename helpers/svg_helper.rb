module SvgIcon
  def icon(name)
    root = Middleman::Application.root
    file_path = "#{root}/source/images/icons/#{name}.svg"
    return File.read(file_path) if File.exists?(file_path)
    '(not found)'
  end
end
