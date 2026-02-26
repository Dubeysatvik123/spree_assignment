source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '7.1.3'
gem 'puma', '~> 6.0'
gem 'sprockets-rails'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false
gem 'image_processing', '~> 1.2'

# Pagination - must load before spree_backend
gem 'kaminari', '~> 1.2'

# SQLite for local only
gem 'sqlite3', '~> 1.4', group: [:development, :test]

# MySQL for production
gem 'mysql2', '~> 0.5', group: :production

# Spree - pinned to stable 4.7.x which works with Rails 7.1
gem 'spree', '~> 4.7.0'
gem 'spree_backend', '~> 4.7.0'
gem 'spree_emails', '~> 4.7.0'
gem 'spree_sample', '~> 4.7.0'
gem 'spree_auth_devise', '~> 4.6'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console'
  gem 'capistrano', '~> 3.18', require: false
  gem 'capistrano-rails', '~> 1.6', require: false
  gem 'capistrano-rbenv', '~> 2.2', require: false
  gem 'capistrano-bundler', '~> 2.1', require: false
  gem 'capistrano3-puma', require: false
end
