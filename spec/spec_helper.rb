
require 'rubygems'
require 'bundler/setup'

# Remove any previous definitions for the constant `Zeebe` (module) that might
# already exist e.g. due to how bundler works to test if requiring the gem works
# correctly in a nearly-untouched environment and surface load order issues like
# the one in https://github.com/zeebe-io/zeebe-client-ruby/pull/47
Object.send :remove_const, :Zeebe
require 'zeebe/client'
