# frozen_string_literal: true

source 'https://rubygems.org'
ruby File.read(File.expand_path('.ruby-version', __dir__)).strip

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'haml'
gem 'jsbundling-rails'
gem 'pg'
gem 'puma'
gem 'propshaft'
gem 'rails'
gem 'redis'
gem 'turbo-rails'

group :development, :test do
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'webdrivers'
end
