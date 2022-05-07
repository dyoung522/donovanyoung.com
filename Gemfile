source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", "~> 7.0.2", ">= 7.0.2.4"

# Core Gems
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "pg", "~> 1.3"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# supporting Gems
gem "brakeman", "~> 5.2"
gem "bundler-audit", "~> 0.9.0"
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "redcarpet", "~> 3.5"
gem "rouge-rails", "~> 0.2.1"
gem "rubocop", "~> 1.28", require: false
gem "rubocop-discourse", "~> 2.5"
gem "rubocop-rails", "~> 2.14", require: false
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot", "~> 6.2"
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 2.20"
  gem "pry-rails", "~> 0.3.9"
  gem "rspec-rails", "~> 5.1"
  gem "rubocop-rspec", "~> 2.10", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "webdrivers"
end
