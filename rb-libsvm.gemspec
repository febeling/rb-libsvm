# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'libsvm/version'

Gem::Specification.new do |s|
  s.name        = "rb-libsvm"
  s.version     = Libsvm::VERSION
  s.authors     = ["C. Florian Ebeling", "Rimas Silkaitis"]
  s.email       = ["florian.ebeling@gmail.com", "neovintage@gmail.com"]
  s.homepage    = "https://github.com/febeling/rb-libsvm"
  s.summary     = %q{Ruby bindings for LIBSVM}
  s.description = %q{Self-contained LIBSVM package for Ruby (that doesn't use SWIG). LIBSVM is a popular implementation of SVM, a machine learning classifier.}
  s.required_ruby_version = '>= 1.8.7'

  s.rubyforge_project = "rb-libsvm"

  s.add_development_dependency "rake", "~> 10.0.0"
  s.add_development_dependency('rake-compiler', '~> 0.9.5')
  s.add_development_dependency('rake-compiler-dock', '~> 0.4.0')
  s.add_development_dependency('rspec', '>= 3.0.0')

  s.extensions << 'ext/libsvm/extconf.rb'
end
