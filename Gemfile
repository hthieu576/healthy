source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
gem 'jquery-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
gem 'rubocop-rails', require: false

#Chart
gem "chartkick"
gem "groupdate"

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# DB
gem 'mysql2'

# View
gem 'haml', '~> 5.1', '>= 5.1.1'

# Log
gem 'paper_trail', '~> 11.0'

# Authorization
gem 'pundit', '~> 1.1'

# Devise
gem 'devise', '>= 4.7.1'

# Configuration
gem 'figaro'
gem 'hashie'

# Decorator
gem 'draper'

gem 'rack-attack'
gem 'rack-cors'

# Model Extension
gem 'annotate'
gem 'active_model_serializers'

# Documentation
gem 'grape-swagger'
gem 'grape-swagger-entity'
gem 'grape-swagger-rails'

# Authentication
gem 'jwt'
# gem 'bcrypt'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'faker'
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'rspec-rails'
  gem 'rspec-collection_matchers', require: 'rspec/collection_matchers'
  gem 'rspec-retry', require: 'rspec/retry'
  gem 'database_cleaner'
  gem 'guard-rspec', require: false
  gem 'terminal-notifier-guard'
  gem 'mocha', :require => false
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'rspec-instafail', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
