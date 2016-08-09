<p align="center">
  <img draggable="false" width="150" src="http://blog.bemind.me/content/images/2015/12/logo-bemind-2.png" alt="Static Site Boilerplate - Middleman"/>

  <h1 align="center">Static Site Boilerplate</h1>
</p>


## Prerequisites

| Package       | Link                       | Version / installation  |
|:--------------|:---------------------------|:------------------------|
| *Node.js*     | https://nodejs.org/en/     | version 4+              |
| *Bundler*     | http://bundler.io/         | `gem install bundler`   |

**Note**: If you get permission error when running `gem install bundler` try to run this command instead `sudo gem install -n /usr/local/bin bundler`


## Setup
1. Run `bundle` to download and bundle required gems.

**NOTE**: *If you get the unresolved dependencies warning try to run `sudo bundle clean --force`*

## Development
To start development just run `middleman server` command inside the terminal. A LiveReload istance (http://localhost:4567) will be opened and every file change will be automagically reflected to your browser. All the files will be served from the `./dist` directory. 


## Production build
You can build the site by running `middleman build` the build process will start and all the files will be builded inside the `./dist` directory.


## Deploy
This boilerplate become with a a simple Rake configuration that allow you to deploy the build to the project repository. By running `rake publish` the build will start and will be pushed to the `gh-pages` branch by default. If you want to change the deploy branch just edit the `Rakefile`.


## Configuration
You can change the configuration default values by putting `config[:NAME] = 'VALUE'` inside the `config.rb`

Default middleman configurations:

```ruby
  # Name of the source directory
  # @return [String]
  config.define_setting :source,      "source", 'Name of the source directory'

  # Middleman environment. Defaults to :development, set to :build by the build process
  # @return [String]
  config.define_setting :environment, ((ENV['MM_ENV'] && ENV['MM_ENV'].to_sym) || :development), 'Middleman environment. Defaults to :development, set to :build by the build process'

  # Which file should be used for directory indexes
  # @return [String]
  config.define_setting :index_file,  "index.html", 'Which file should be used for directory indexes'

  # Whether to strip the index file name off links to directory indexes
  # @return [Boolean]
  config.define_setting :strip_index_file, true, 'Whether to strip the index file name off links to directory indexes'

  # Whether to include a trailing slash when stripping the index file
  # @return [Boolean]
  config.define_setting :trailing_slash, true, 'Whether to include a trailing slash when stripping the index file'

  # Location of javascripts within source.
  # @return [String]
  config.define_setting :js_dir,      "javascripts", 'Location of javascripts within source'

  # Location of stylesheets within source. Used by Compass.
  # @return [String]
  config.define_setting :css_dir,     "stylesheets", 'Location of stylesheets within source'

  # Location of images within source. Used by HTML helpers and Compass.
  # @return [String]
  config.define_setting :images_dir,  "images", 'Location of images within source'

  # Location of fonts within source. Used by Compass.
  # @return [String]
  config.define_setting :fonts_dir,   "fonts", 'Location of fonts within source'

  # Where to build output files
  # @return [String]
  config.define_setting :build_dir,   "build", 'Where to build output files'

  # Default prefix for building paths. Used by HTML helpers and Compass.
  # @return [String]
  config.define_setting :http_prefix, "/", 'Default prefix for building paths'

  # Default layout name
  # @return [String, Symbold]
  config.define_setting :layout, :_auto_layout, 'Default layout name'
```
