source 'https://rubygems.org'

# rails!
gem 'rails', '~>5.1'
# Sass (.scss) >>> dealing with .css files
gem 'sass-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# HAML is a HTML templating language. I find it nicer than the included .erb
gem 'haml'
# foundation for rails - our UI framework of choice
gem 'foundation-rails', '~> 6.0'
# font awesome
gem 'font-awesome-rails'

group :production do
	gem 'puma'
	gem 'mysql2', '~>0.4.0'
end

group :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'listen'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'capybara'
  #
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end
