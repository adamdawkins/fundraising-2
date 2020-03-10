# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.0"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", ">= 1.4.2", require: false
gem "coffee-rails"
gem "pg", ">= 0.18"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.2.1"
gem "sass-rails", "~> 6.0"

gem "sidekiq"

gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "byebug"
end

group :development do
  gem "brakeman", require: false
  gem "dotenv-rails"
  gem "listen", ">= 3.0.5"
  gem "pry-rails" # A much better console than IRB
  gem "rubocop-rails", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "launchy"
  gem "rspec-rails"
  gem "simplecov", require: false
end
