source 'https://rubygems.org'

ruby '2.2.0'
gem 'rails', '4.2.0'

# Use postgresql as the database for Active Record
gem 'pg'

gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails',    '~> 4.0.0'
gem 'compass-rails', '~> 2.0.alpha.0'
gem 'furatto'
gem 'font-awesome-sass'
gem 'sprockets', '2.11'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'figaro'
gem 'unicorn'
gem 'annotate'
gem 'devise'

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'debugger2', git: 'git://github.com/ko1/debugger2.git'
  gem 'factory_girl_rails'
  gem 'ffaker'
end

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

