# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [1.4.3] - 2018-09-15
### Changed
- Upgrade to LIBSVM 3.23

## [1.4.2] - 2018-09-02
### Changed
- bundler requires automatically

## [1.4.1] - 2018-06-15

## [1.4.0] - 2015-09-18
### Changed
- Complete transition to `expect` specs.
- Raise exception in `Libsvm::Model.load` if model can't be loaded (fixes #21).
### Fixed
- Fix a bug in `Libsvm::Node#==` when comparing with `nil`.

## [1.3.1] - 2015-03-21
### Fixed
- Spelling and punctuation in documentation comments
- Fix LIBSVM_VERSION header; now correctly specifies 320
