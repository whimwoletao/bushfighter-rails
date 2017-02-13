source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
group :development, :test do
  gem 'pg'
end

group :production do
  gem 'pg'
end
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
#needed for heroku for heroku erro logs
gem 'rails_12factor'
gem 'heroku', '~> 3.43', '>= 3.43.16'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
#needed  for admin dashboard
gem 'rails_admin'

gem 'elasticsearch', '~> 5.0'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

#needed for persing csv and xls
gem 'roo', '~> 2.5.0'
gem 'roo-xls', '~> 1.0'

#needed to work with roo
gem "iconv", "~> 1.0.3"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#needed for devise
gem 'devise', '~> 4.2'

# If you want users to be registered through an invitation carried out by a site administrator,
#  or by a group leader. 
# (As an alternative to end-users explicitly registering themselves on provided web form
gem 'devise_invitable'

# friendly id, will be used to search instead of id
gem 'friendly_id', '~> 5.2'
#needed for search
gem 'searchkick', '~> 2.0'
#needed for general file upload
gem 'carrierwave', '~> 1.0'
gem 'minitest', '~> 5.10', '>= 5.10.1'

#needed for managing image
gem 'paperclip', '~> 5.1'
gem 'bootstrap-sass', '~> 3.2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# for creating environmental viarible
gem 'figaro'

# creating fog file to help with aws configuration 
gem 'fog'
# for resizing images, rails version of image magic
gem 'mini_magick', '~> 4.3'

