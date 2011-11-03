require 'rubygems'
require 'bundler/setup'
require 'libsvm'

include Libsvm

RSpec.configure do |config|
	config.color_enabled = true
  # config.formatter     = 'documentation'
end
