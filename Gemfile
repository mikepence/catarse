source 'https://rubygems.org'

# For heroku
ruby '1.9.3'

gem 'rails', '3.2.12'
gem 'sidekiq', '~> 2.7.5'
gem 'sinatra', require: false # required by sidekiq web interface mounted on /sidekiq

gem "simple_form"
gem 'country-select'

# Turns every field on a editable one
gem 'best_in_place'

# State machine for attributes on models
gem 'state_machine', require: 'state_machine/core'

# paranoid stuff
gem 'paper_trail', '~> 2.7.1'

# Database and data related
gem 'pg'
gem 'pg_search'
gem 'postgres-copy'
gem 'schema_plus'
gem 'schema_associations'

# Payment engine using Paypal
gem 'catarse_paypal_express', git: 'git://github.com/catarse/catarse_paypal_express.git', ref: 'bce4d8c'

# Payment engine using Moip
gem 'catarse_moip', git: 'git://github.com/catarse/catarse_moip.git', ref: '9ba2b2b'

# TODO: Check the Catarse_Moip dependency
gem 'moip', git: 'git://github.com/moiplabs/moip-ruby.git'

# Decorators
gem 'draper'

# Frontend stuff
gem 'slim'
gem 'slim-rails'
gem 'haml-rails'
gem 'jquery-rails'
gem 'initjs'
gem 'bootstrap-sass', '>= 2.2.2.0'

# Authentication and Authorization
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook', '1.4.0'
gem 'devise'

# See https://github.com/ryanb/cancan/tree/2.0 for help about this
# In resume: this version of cancan allow checking for authorization on specific fields on the model
gem 'cancan', git: 'git://github.com/ryanb/cancan.git', branch: '2.0', ref: 'f1cebde51a87be149b4970a3287826bb63c0ac0b'


# Error reporting
gem "airbrake"

# Email marketing
gem 'catarse_mailchimp', git: 'git://github.com/catarse/catarse_mailchimp'

# HTML manipulation and formatting
gem 'formtastic', '~> 2.1.1'
gem "auto_html", '= 1.4.2'
gem 'kaminari'

# Uploads
gem 'carrierwave', '~> 0.7.0'
gem 'rmagick'
gem 'fog'

# Other Tools
gem 'feedzirra'
gem 'validation_reflection', git: 'git://github.com/ncri/validation_reflection.git'
gem 'inherited_resources', '1.3.1'
gem 'has_scope'
gem 'spectator-validates_email', require: 'validates_email'
gem 'has_vimeo_video', '~> 0.0.5'
gem 'enumerate_it'
gem 'httparty', '~> 0.6.1' # this version is required by moip gem, otherwise payment confirmation will break

# Translations
gem 'http_accept_language'
gem 'routing-filter'

# Payment
gem 'activemerchant', '1.17.0', require: 'active_merchant'
gem 'httpclient', '2.2.5'

# Server
gem 'thin'

group :production do

  # Enabling Gzip on Heroku
  # If you don't use Heroku, please comment the line below.
  gem 'heroku-deflater', '~> 0.4.1'
end

group :development do
  gem 'mailcatcher'
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'launchy'
  gem 'database_cleaner'
  gem 'mocha', '~> 0.10.4'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'capybara', '~> 2.0.2'
end


group :assets do
  gem 'sass-rails', '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem "compass-rails", '~> 1.0.2'
  gem 'uglifier', '~> 1.0.3'
  gem 'compass-960-plugin', '~> 0.10.4'
end


# FIXME: Not-anymore-on-development
# Gems that are with 1 or more years on the vacuum
gem 'weekdays'
gem "rack-timeout"

# TODO: Take a look on dependencies. Why not auto_html?
gem 'rails_autolink', '~> 1.0.7'

# TODO: Take a look on dependencies
gem "RedCloth"

gem 'spork'

gem 'newrelic_rpm', :group => :production
