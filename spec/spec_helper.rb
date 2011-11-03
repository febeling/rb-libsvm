require 'rubygems'
require 'bundler/setup'
require 'libsvm'

RSpec.configure do |config|
	config.include Libsvm
	config.color_enabled = true
  # config.formatter     = 'documentation'
end
