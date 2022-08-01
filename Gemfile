source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0", ">= 7.0.2"

# Core Gems
gem "bcrypt"
gem "bootsnap", require: false
gem "pg", "~> 1.3"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# supporting Gems
gem "better_html"
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "oauth2"
gem "redcarpet"
gem "rouge-rails"
gem "sorcery"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"

group :development, :test do
  gem "brakeman", "~> 5.2"
  gem "bundler-audit", "~> 0.9.0"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "erb_lint", "~> 0.1.3", require: false
  gem "factory_bot", "~> 6.2"
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 2.20"
  gem "guard", "~> 2.18"
  gem "guard-rails", "~> 0.8.1"
  gem "guard-rspec", "~> 4.7"
  gem "letter_opener", "~> 1.8"
  gem "pry-rails", "~> 0.3.9"
  gem "rspec-rails", "~> 5.1"
  gem "rubocop", require: false
  gem "rubocop-discourse", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
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
  gem "fuubar"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "webdrivers"
end
