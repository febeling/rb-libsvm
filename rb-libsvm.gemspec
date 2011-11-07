# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'rb-libsvm/version'

Gem::Specification.new do |s|
  s.name        = "rb-libsvm"
  s.version     = Libsvm::VERSION
  s.authors     = ["C. Florian Ebeling", "Rimas Silkaitis"]
  s.email       = ["neovintage@gmail.com"]
  s.homepage    = "https://github.com/febeling/rb-libsvm"
  s.summary     = %q{Ruby language bindings for LIBSVM}
  s.description = %q{libsvm and ruby without using swig}

  s.rubyforge_project = "rb-libsvm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake-compiler"
  s.add_development_dependency "rspec", "2.7.0"

  s.extensions << 'ext/rb-libsvm/extconf.rb'
end

