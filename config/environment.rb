# config/environment.rb
require 'bundler/setup'
Bundler.require

require 'ostruct' # avoid warning on Ruby 3.3+
require_all 'app'
