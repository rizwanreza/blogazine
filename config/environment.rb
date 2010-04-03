RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'compass', :version => '>= 0.8.17'
  config.gem 'haml', :version => '>=2.2.16'

  config.gem "carrierwave"
  config.gem "inherited_resources"
  config.gem "formtastic"
  
  config.gem "warden"
  config.gem "devise", :version => '1.0.6'

  config.time_zone = 'UTC'
end