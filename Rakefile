require "bundler/gem_tasks"
require "rake/extensiontask"
require 'rspec/core/rake_task'

task :default => :spec

spec = eval File.read("rb-libsvm.gemspec")

Gem::PackageTask.new(spec) do |pkg|
end

Rake::ExtensionTask.new('libsvm', spec) do |ext|
  ext.name = 'libsvm_ext'
  ext.cross_compile = true

  ext.cross_platform = ['x86-mingw32', 'x86-mswin32-60', 'x64-mingw32']

  ext.cross_compiling do |gem_spec|
    gem_spec.post_install_message = "You installed the binary version of this gem!"
  end
end

RSpec::Core::RakeTask.new('spec')
Rake::Task[:spec].prerequisites << :clean
Rake::Task[:spec].prerequisites << :compile

desc "windows gem"
task 'gem:windows' do
  require 'rake_compiler_dock'
  RakeCompilerDock.sh "bundle && rake cross native gem RUBY_CC_VERSION=1.9.3:2.0.0:2.1.6:2.2.3 --trace"
end
