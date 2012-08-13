source 'https://rubygems.org'

gem 'rails', '3.2.6'

# RAILS REQUIRED GEMS
gem 'jquery-rails'  #the latest jquery, for rails

# RAILS REQUIRED ASSET PIPELINE GEMS
group :assets do
  gem 'coffee-rails', '~> 3.2.1'  # coffeescript compiler, for rails
  gem 'sass-rails',   '~> 3.2.3'  # scss compiler, for rails
  gem 'uglifier',     '>= 1.0.3'  # js compressor, for rails
  gem "twitter-bootstrap-rails"   # bootstrap styling
end

# UNIVERSAL GEMS
gem 'active_attr'                  # treat virtual attributes as db attributes in rails scopes
gem 'annotate', :git => 'git://github.com/jeremyolliver/annotate_models.git', :branch => 'rake_compatibility' # see schema in your models
gem 'acts_as_commentable'          # commenting framework
gem 'delayed_job'                  # cron your jobs
# gem 'cancan'                      # controller permissions
# gem 'cantango'                    # user roles for permissions
gem 'devise'                       # authentication
gem 'devise_invitable'            # email invite support
# gem 'devise_ldap_authenticatable' # devise on ldap
# gem 'net-ldap'                    # ldap connector
gem 'switch_user'                  # admin flip between users
gem 'kaminari'                     # pagination
gem "nested_form"                  # easy form helpers+ajax for related objects
gem 'rails-boilerplate'            # reduce boilerplate code
gem 'request-log-analyzer'         # use rake to inspect log files
gem 'seer'                         # google charts
gem 'lazy_high_charts'             # high charts charting library
gem 'princely'                     # prince pdf
gem 'sunspot_rails'                # solr-search engine support
gem 'unicorn'                      # lightweight multi-worker http server
gem 'carrierwave'                  # image uploads
gem 'plupload-rails3'              # file uploads
gem 'awesome_nested_set'           # tree structure
gem 'rails3_acts_as_paranoid'      # soft delete
gem 'paper_trail'                  # audit trails
gem 'whenever'                     # cron jobs
gem 'strong_parameters'            # dynamic authorization for models
# gem 'ransack'                      # search forms
# gem 'github'                       # github api client
# gem 'acts_as_list'                 #
# gem "authorize-net", "~> 1.5.2"    # authorize.net api
# gem "authorize_net_reporting", "~> 1.0.1" # authorize.net transaction api for reporting, settlements, etc
# gem 'savon'                        # library for making soap requests


group :development, :test do
  gem 'mysql2'                    # specified seperately in case you'd rather use sqlite3
  gem 'rspec-rails'               # rspec testing
  gem 'fuubar'                    # progress bar for rspec tests
  gem 'guard-rspec', '0.5.5'      # use guard for testing with rspec
  gem 'sunspot_solr'              # runs solr search engine without needing to download/configure it
  gem 'syntax_fix'                # rails generators still use ruby 1.8 hash styles, which will eventually deprecate...
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
  gem 'rails-erd'           # generates entity relationship diagram
end

group :test do
  # gem 'cucumber-rails'      # Rspec alternative if you want it
  gem 'capybara'              # client-side testing
  gem 'database_cleaner'      # treat db interactions as rollbackable, and other handy things
  gem 'launchy'               # # call non-cross platform commands from ruby
  gem 'jasmine-rails'         # javascript testing
  gem 'guard-spork'           # use spork with guard
  gem 'spork'                 # test using a test server, increases speed of testing
  gem 'minitest'              # 
  gem 'database_cleaner'      # treat db interactions as rollbackable, and other handy things
  gem 'factory_girl_rails'    # fixture factories
  gem 'mocha'                 # mimic object interfaces
  gem 'rspec-rails-mocha'     # mocha-rspec hook
  gem 'turn'                  # Pretty print for test pass/fail summaries
  gem 'growl', '1.0.3'        # growl notifications when testing
end

group :production, :staging do
  gem 'mysql2'          # specified seperately in case you want to use sqlite3 for dev
end
