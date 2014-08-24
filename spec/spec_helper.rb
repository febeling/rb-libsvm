require 'rubygems'
require 'bundler/setup'
require 'libsvm'

include Libsvm

RSpec.configure do |config|
  config.color = true
end
