<p align="center">
  <img draggable="false" width="150" src="http://blog.bemind.me/content/images/2015/12/logo-bemind-2.png" alt="Static Site Boilerplate - Middleman"/>

  <h1 align="center">Static Site Boilerplate</h1>
</p>


## Prerequisites

| Package       | Link                       | Version / installation  |
|:--------------|:---------------------------|:------------------------|
| *Node.js*     | https://nodejs.org/en/     | version 5+              |
| *Bundler*     | http://bundler.io/         | `gem install bundler`   |

**Note**: If you get permission error when running `gem install bundler` try to run this command instead `sudo gem install -n /usr/local/bin bundler`


## Setup
1. Run `bundle` to download and bundle required gems.


## Development
To start development just run `middleman server` command inside the terminal. A LiveReload istance (http://localhost:4567) will be opened and every file change will be automagically reflected to your browser. All the files will be served from the `./build` directory. 


## Production build
You can build the site by running `middleman build` the build process will start and all the files will be builded inside the `./build` directory.


## Deploy
This boilerplate become with a a simple Rake configuration that allow you to deploy the build to the project repository. By running `rake publish` the build will start and will be pushed to the `gh-pages` branch by default. If you want to change the deploy branch just edit the `Rakefile`.