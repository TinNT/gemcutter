RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'

  config.gem 'haml',
    :version => '2.1.0'
  config.gem "thoughtbot-clearance",
    :lib     => 'clearance',
    :source  => 'http://gems.github.com',
    :version => '0.8.2'
  config.gem 'mislav-will_paginate',
    :version => '~> 2.3.11',
    :lib     => 'will_paginate',
    :source  => 'http://gems.github.com'
  config.gem 'aws-s3',
    :version => '0.6.2',
    :lib     => 'aws/s3'
  config.gem "ambethia-smtp-tls",
    :lib => "smtp-tls",
    :version => "1.1.2",
    :source  => "http://gems.github.com"
  config.gem "memcache-client",
    :lib     => "memcache",
    :version => "1.7.2"
  config.gem "rtomayko-rack-cache",
    :lib     => "rack/cache",
    :version => "0.5.1"
  config.gem "searchlogic"

  config.action_mailer.delivery_method = :smtp
end

DO_NOT_REPLY = "donotreply@gemcutter.org"

require 'lib/indexer'
require 'lib/core_ext/string'

Gem.configuration.verbose = false
ActiveRecord::Base.include_root_in_json = false

require 'clearance/sessions_controller'

require 'rdoc/markup/simple_markup'
require 'rdoc/markup/simple_markup/to_html'
