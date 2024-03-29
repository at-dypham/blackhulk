source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.5'
gem 'figaro'
gem 'httparty'

##### Assets #####
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

##### Database #####
gem 'pg', '~> 0.15'
gem 'redis'
gem 'sidekiq'

##### Analysis #####
gem 'brakeman'
gem 'bullet'
gem 'rails_best_practices'
gem 'rubocop'
gem 'scss_lint'

##### Automate Code Review #####
gem 'saddler'
gem 'saddler-reporter-github'

group :development, :test do
  ##### Debugging #####
  gem 'awesome_print'
  gem 'pry-byebug'
  gem 'web-console', '~> 2.0'
  gem 'letter_opener_web'
  gem 'annotate'
  gem 'quiet_assets'

  ##### Testing #####
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'spring'
  gem 'capybara'
end

group :test do
  gem 'database_cleaner'
  gem 'poltergeist'
  gem 'vcr'
  gem 'webmock'
  gem 'sinatra'
end
