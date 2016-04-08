source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg', '0.18.4'
gem 'sass-rails', '5.0.4'
gem 'uglifier', '3.0.0'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jbuilder'
gem 'sdoc'
gem 'gmail', '0.6.0'
gem 'angularjs-rails', '1.5.0'
gem 'angular_rails_csrf', '1.0.4'
gem 'figaro', '1.1.1'
gem 'premailer'
gem 'omniauth-google-oauth2'

gem 'devise', '3.5.6'
source "https://rails-assets.org" do
  gem "rails-assets-angular-devise"
end

group :development, :test do
  gem 'pry-byebug', '1.3.2'
  gem 'faker', '1.6.3'
  gem 'better_errors', '2.1.1'
  gem 'jazz_hands', '0.5.2', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
  gem 'hirb'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec', '4.6.5', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rubocop', require: false
end

group :production do
  gem 'rails_12factor', '0.0.3'
  ruby '2.2.2'
end
