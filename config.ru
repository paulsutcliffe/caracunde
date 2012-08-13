if ENV['RAILS_ENV'] == 'production'
  ENV['HOME'] ||= `echo ~`.strip
  ENV['GEM_PATH'] = File.expand_path('~/.gems') + ':' + '/usr/lib/ruby/gems/1.8'
  ENV['GEM_HOME'] = File.expand_path('~/.gems')
end
# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Caracunde::Application
