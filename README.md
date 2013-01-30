# rb-libsvm -- Ruby language bindings for LIBSVM

[![Gem Version](https://badge.fury.io/rb/rb-libsvm.png)](http://badge.fury.io/rb/rb-libsvm)
[![Build Status](https://secure.travis-ci.org/febeling/rb-libsvm.png)](http://travis-ci.org/febeling/rb-libsvm)

This package provides a Ruby bindings to the [LIBSVM][] library.  SVM
is a machine learning and classification algorithm, and LIBSVM is a
popular free implementation of it, written by Chih-Chung Chang and
Chih-Jen Lin, of National Taiwan University, Taipei. See the book ["Programming
Collective Intelligence,"](http://books.google.com/books?id=fEsZ3Ey-Hq4C) among others, for a usage example.

Note: There exist two other Ruby bindings for LIBSVM. One is named
[Ruby SVM][ruby-svm], written by Rudi Cilibrasi. The other, more
actively developed one is [libsvm-ruby-swig][svmrubyswig] by Tom Zeng,
which is built using SWIG.

LIBSVM includes a number of command line tools for preprocessing
training data and finding parameters. These tools are not included in
this gem. You should install the original package if you need them.

It is helpful to consult the [README][] of the LIBSVM package for
reference when configuring the training parameters.

Currently this package includes libsvm version 3.16.

## Dependencies

None.  LIBSVM is bundled with the project.  Just install and go!

## Installation

For building this gem from source on OS X (which is the default
packaging) you will need to have Xcode installed, and from within Xcode
you need to install the command line tools. Those contain the compiler
which is necessary for the native code, and similar tools.

To install the gem run this command

    gem install rb-libsvm

## Usage

This is a short example of how to use the gem.

```ruby
require 'libsvm'

# This library is namespaced.
problem = Libsvm::Problem.new
parameter = Libsvm::SvmParameter.new

parameter.cache_size = 1 # in megabytes

parameter.eps = 0.001
parameter.c = 10

examples = [ [1,0,1], [-1,0,-1] ].map {|ary| Libsvm::Node.features(ary) }
labels = [1, -1]

problem.set_examples(labels, examples)

model = Libsvm::Model.train(problem, parameter)

pred = model.predict(Libsvm::Node.features(1, 1, 1))
puts "Example [1, 1, 1] - Predicted #{pred}"
```

If you want to rely on Bundler for loading dependencies in a project,
(i.e. use `Bundler.require` or use an environment that relies on it,
like Rails), then you will need to specify rb-libsvm in the Gemfile
like this:

```ruby
gem 'rb-libsvm', require: 'libsvm'
```

This is because the loadable name (`libsvm`) is different from the
gem's name (`rb-libsvm`).

## Author

Written by [C. Florian Ebeling](https://github.com/febeling).

## Contributors

* [Rimas Silkaitis](https://github.com/neovintage)
* [Aleksander Pohl](https://github.com/apohllo)
* [Andreas Eger](https://github.com/sch1zo)

## License

This software can be freely used under the terms of the MIT license,
see file MIT-LICENSE.

This package includes the source of LIBSVM, which is free to use under
the license in the file LIBSVM-LICENSE.

### Posts about using SVMs with Ruby

http://neovintage.blogspot.com/2011/11/text-classification-using-support.html

http://www.igvita.com/2008/01/07/support-vector-machines-svm-in-ruby/

[libsvm]:       http://www.csie.ntu.edu.tw/~cjlin/libsvm/

[svmrubyswig]:  http://github.com/tomz/libsvm-ruby-swig/tree/master

[ruby-svm]:     http://sourceforge.net/projects/rubysvm/

[README]:       https://github.com/febeling/libsvm/blob/master/README
