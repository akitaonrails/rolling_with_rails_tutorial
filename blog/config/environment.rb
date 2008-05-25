RAILS_GEM_VERSION = '2.0.991' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  #config.action_controller.session_store = :active_record_store
  config.action_controller.session = {
    :session_key => '_blog_demo_session',
    :secret      => '2f60d1ea840a895f406b30276c7dfe47ac86fbebf345be8c9d5f66487a9c30985a62216347ea71003a9c4686095eb99cf895455ffd5b5c36413fe49a83ebe3b7'
  }
  
  config.gem "haml", :version => "1.8"
  config.gem "launchy"
  config.gem "defunkt-github", :lib => 'github', :source => "http://gems.github.com"
  config.gem "rmagick", :lib => "RMagick2"
  
  config.time_zone = 'UTC'
end