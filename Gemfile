source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.0.alpha2"

# Use Postgres as the database for Active Record
gem "pg"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
# gem "importmap-rails", ">= 0.3.4"
gem "importmap-rails", "0.5.3"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", ">= 0.7.11"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", ">= 0.4.0"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails", ">= 0.1.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.7"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Use Sass to process CSS
# gem "sassc-rails", "~> 2.1"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

gem "sidekiq", "~> 6.2"
gem "sidekiq-cron", "~> 1.2"
gem "premailer-rails", "~> 1.11"
gem "lograge", "~> 0.11.2"
gem "meilisearch", "~> 0.16.1"

group :development, :test do
  # Start debugger with binding.b [https://github.com/ruby/debug]
  # gem "debug", ">= 1.0.0", platforms: %i[ mri mingw x64_mingw ]

  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails", "~> 2.7"
  gem "factory_bot_rails"
  gem "rspec-rails", "~> 4.0"
end

group :development do
  gem "letter_opener", "~> 1.7"
  gem "letter_opener_web", "~> 1.4"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "standardrb", "~> 1.0", require: false
  gem "web-console", ">= 4.1.0"
end
