source 'https://rubygems.org'

gem 'rails', '3.2.6'

# RAILS REQUIRED GEMS
gem 'jquery-rails'  #the latest jquery, for rails

# RAILS REQUIRED ASSET PIPELINE GEMS
group :assets do
  gem 'coffee-rails', '~> 3.2.1'  # coffeescript compiler, for rails
  gem 'sass-rails',   '~> 3.2.3'  # scss compiler, for rails
  gem 'uglifier',     '>= 1.0.3'  # js compressor, for rails
end

# UNIVERSAL GEMS
gem 'active_attr'                 # treat virtual attributes as db attributes in rails scopes
gem 'acts_as_commentable'         # commenting framework
gem 'carrierwave'                 # image uploads
gem 'delayed_job'                 # cron your jobs
gem 'devise'                      # authentication
gem 'devise_invitable'            # email invite support
gem "devise_ldap_authenticatable" # devise on ldap
gem 'kaminari'                    # pagination
gem "nested_form"                 # easy form helpers+ajax for related objects
gem 'rails-boilerplate'           # reduce boilerplate code
gem 'request-log-analyzer'        # use rake to inspect log files
gem 'seer'                        # 
gem 'sunspot_rails'               # solr-search engine support
gem "twitter-bootstrap-rails"     # bootstrap styling
gem 'unicorn'                     # lightweight multi-worker http server


group :development, :test do
  gem 'mysql2'        # specified seperately in case you'd rather use sqlite3
  gem 'rspec-rails'   # rspec testing
  gem 'guard-rspec', '0.5.5'
  gem 'sunspot_solr'  # runs solr search engine without needing to download/configure it
end

group :development do
  gem 'awesome_print'       # pretty print in irb to the max
  gem 'capistrano'          # deployment tool
  # gem 'debugger'          # better debugger (rails 3 support issues)
  gem 'fancy_irb'           # live result printing in irb
  gem 'hirb'                # table/tree irb object views
  gem 'nifty-generators'    # view generators
  gem 'pry'                 # live code inspection irb alternative
  gem 'pry-doc'             # documentation for pry
  gem 'wirb'                # irb colorization
end

group :test do
  # gem 'cucumber-rails'      # Rspec alternative if you want it
  gem 'capybara'              # client-side testing
  gem 'guard-spork'
  gem 'spork'
  gem 'database_cleaner'      # treat db interactions as rollbackable, and other handy things
  gem 'factory_girl_rails'    # fixture factories
  gem 'launchy'               # call non-cross platform commands from ruby
  gem 'mocha'                 # mimic object interfaces
  gem 'rspec-rails-mocha'     # mocha-rspec hook
  gem 'turn'                  # Pretty print for test pass/fail summaries
  gem 'growl', '1.0.3'
end

group :production, :staging do
  gem 'mysql2'          # specified seperately in case you want to use sqlite3 for dev
end
