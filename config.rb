###
# Page options, layouts, aliases and proxies
###


# Global settings

ANALYTICS_KEY = 'UA-XXXXX-Y'   # To disable GA, leave unset or set to nil



# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Specific layout
page "/", layout: "landing" # Overide home (index.html) layout
page "/*", layout: "page"

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

  # Active localization
  activate :i18n, :mount_at_root => :it

  # Activate prockets for sass globbing
  activate :sprockets

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
require "lib/custom_helpers"
helpers CustomHelpers

# Build-specific configuration
configure :build do

  # Enviroment specific settings

  # Change to your Google Analytics key (e.g. UA-XXXXX-Y)
  config[:ga_key] = ANALYTICS_KEY != '' ? ANALYTICS_KEY : nil

  # --------------------------------------------------------

  # Activate url prettify
  activate :directory_indexes

  # Active localization
  activate :i18n, :mount_at_root => :it

  # Activate prockets for sass globbing
  activate :sprockets

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Minify the HTML
  activate :minify_html

  # Activate resources hashing
  activate :asset_hash

  # Autoprefixer config
  activate :autoprefixer do |config|
    config.browsers = ['last 2 versions', 'Explorer >= 11']
  end
end
