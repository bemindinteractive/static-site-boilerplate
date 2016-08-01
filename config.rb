###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
config[:source] = 'source'
config[:build_dir] = 'dist'


# Reload the browser automatically whenever files change
configure :development do

  # Activate url prettify
  activate :directory_indexes

  # Activate livereload
  activate :livereload

  # Autoprefixer config
  activate :autoprefixer do |config|
    config.browsers = ['last 2 versions', 'Explorer >= 11']
  end
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Activate url prettify
  activate :directory_indexes

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Minify the HTML
  activate :minify_html

  # Autoprefixer config
  activate :autoprefixer do |config|
    config.browsers = ['last 2 versions', 'Explorer >= 11']
  end
end
