source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.0'
#ruby-gemset=notify_alpha


gem 'rails', '5.2.3'
gem "mysql2", "0.4.4"
gem 'puma', '3.12.3'
gem 'sass-rails', '5.0.7'
gem 'uglifier', '4.1.20'
gem 'coffee-rails', '4.2.2'
gem 'turbolinks', '5.2.0'
gem 'jbuilder', '2.8.0'

gem 'friendly_id', '~> 5.2.4'

# gem 'bootsnap', '1.4.3', require: false
# https://github.com/Shopify/bootsnap/issues/254
gem 'bootsnap', '1.4.1', require: false

gem 'devise'

gem 'grape'
gem 'rack-cors', :require => 'rack/cors'
gem 'grape-active_model_serializers'
gem 'grape-swagger'
gem 'grape-swagger-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

gem 'capistrano', '~> 3.3.0'
gem 'capistrano-passenger'

group :development do
  gem 'web-console', '3.7.0'
  gem 'listen', '3.1.5'
  gem 'spring', '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'capybara', '3.15.0'
  gem 'selenium-webdriver', '3.141.0'
  gem 'chromedriver-helper', '2.1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]



