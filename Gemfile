source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '3.2.13'

gem 'bourbon'
gem 'bootstrap-sass'
gem 'high_voltage'
gem 'jquery-rails'
gem 'rails', '3.2.13'
gem 'simple_form'
gem 'typhoeus'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'sqlite3'
  gem 'factory_girl_rails'
end

group :test do
  gem 'bourne', require: false
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'timecop'
end

group :production do
  gem 'pg'
end

# For test Rails application
gem 'shoulda-context', '~> 1.0.0'
gem 'sqlite3', :platform => :ruby

# Can't wrap in platform :jruby do...end block because appraisal doesn't support
# it
gem 'activerecord-jdbc-adapter',        :platform => :jruby
gem 'activerecord-jdbcsqlite3-adapter', :platform => :jruby
gem 'jdbc-sqlite3',                     :platform => :jruby
gem 'jruby-openssl',                    :platform => :jruby
gem 'therubyrhino',                     :platform => :jruby



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
