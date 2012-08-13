source 'http://rubygems.org'

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "mysql2", "~> 0.2.7"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
gem "capistrano"

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
group :development do
  gem 'barista'
  gem 'yui-compressor', :require => 'yui/compressor'
  gem 'sass'
  gem 'json' # sprocket dependency for Ruby 1.8 only
  gem 'sprockets', :git => 'git://github.com/sstephenson/sprockets.git'
  gem 'compass', '>= 0.13.alpha.0'
  gem 'compass-rails', '>= 1.0.2'
  gem 'susy'
end

gem "haml"
gem "haml-rails"
gem "paperclip", "~>2.0"
gem "will_paginate"
gem "inherited_resources"
gem "rake", "~>0.9.2"
gem "client_side_validations"
gem "jquery-rails"
gem "paper_trail"
gem "metamagic"
gem "friendly_id", "~>4.0.0.beta14"
gem "devise"
gem "nifty-generators"
gem "auto_html"
gem "page_title_helper"
gem "sitemap_generator"

group :test do
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'simplecov'
end

gem 'rspec-rails', :group => [:development, :test]
