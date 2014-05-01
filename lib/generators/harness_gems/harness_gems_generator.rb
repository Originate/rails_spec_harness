require 'rails/generators/base'

class HarnessGemsGenerator < Rails::Generators::Base
  def update_gemfile
    gem 'draper'
    gem 'fob'
    gem 'responsive_service'
    gem 'attr_defaultable', require: 'extend_attr_defaultable'
    gem_group :development, :test do
      gem 'rspec-rails'
      gem 'shoulda'
      gem 'capybara'
      gem 'poltergeist'
      gem 'factory_girl_rails'
      gem 'database_cleaner'
      gem 'simplecov'
      gem 'simplecov-html'
      gem 'guard'
      gem 'guard-rspec'
      gem 'rb-inotify', require: false
      gem 'rb-fsevent', require: false
      gem 'rb-fchange', require: false
    end
    gem_group :development do
      gem 'better_errors'
      gem 'binding_of_caller'
      gem 'meta_request'
    end
  end
end
