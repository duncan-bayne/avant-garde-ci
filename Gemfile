source 'http://rubygems.org/'

gem 'json'
gem 'markdown'
gem 'rack'
gem 'rake'
gem 'sinatra'
gem 'trebuchet', :git => 'https://github.com/duncan-bayne/trebuchet'

# note that these are here, not in :development, :test because there is a /specs endpoint
gem 'rspec'
gem 'rspec-spies'

group :development, :test do
  gem 'pry'
  gem 'roodi'
end

group :development do
  gem 'growl'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-shotgun'

  # pull in whichever filesystem monitoring Gem is required by Guard on this OS
  gem 'rb-fchange', :require => false
  gem 'rb-fsevent', :require => false
  gem 'rb-inotify', :require => false
end
