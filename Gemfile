# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.0.6'

gem 'rails', '~> 7.1.3', '>= 7.1.3.2'

gem 'pg', '~> 1.1'

gem 'puma', '>= 5.0'

gem 'active_model_serializers'

gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

gem 'bootsnap', require: false

gem 'rack-cors'

gem 'kaminari'

group :development, :test do
  gem 'annotate'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'overcommit', require: false
  gem 'rspec-rails'
  gem 'rubocop-rails', require: false
  gem 'shoulda-matchers', '~> 6.1'
  gem 'simplecov', require: false, group: :test
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
