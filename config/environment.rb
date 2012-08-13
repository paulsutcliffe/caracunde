# Load the rails application
ENV['HOME'] ||= `echo ~`.strip
ENV['GEM_PATH'] = File.expand_path('~/.gems') + ':' + '/usr/lib/ruby/gems/1.8'
ENV['GEM_HOME'] = File.expand_path('~/.gems')
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Caracunde::Application.initialize!
