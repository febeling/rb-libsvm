# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## Unreleased
### Changed
- No longer loading core extensions to Hash and Array by default. Load them as 'libsvm/core_ext' or separately as 'libsvm/core_ext/hash' and 'libsvm/core_ext/array'.

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
