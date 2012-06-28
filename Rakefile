require "bundler/gem_tasks"
require "rake/extensiontask"
require 'rspec/core/rake_task'

task :default => :spec

Rake::ExtensionTask.new('libsvm') do |ext|
  ext.lib_dir = File.join('lib', 'libsvm')
  ext.name = 'libsvm_ext'
end

RSpec::Core::RakeTask.new('spec')
Rake::Task[:spec].prerequisites << :clean
Rake::Task[:spec].prerequisites << :compile
