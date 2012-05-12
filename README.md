# rb-libsvm -- Ruby language bindings for LIBSVM

Spec Status: [![Build Status](https://secure.travis-ci.org/febeling/rb-libsvm.png)](http://travis-ci.org/febeling/rb-libsvm)

This package provides a Ruby bindings to the LIBSVM [1] library.  SVM
is a machine learning and classification algorithm, and LIBSVM is a
popular free implementation of it, written by Chih-Chung Chang and
Chih-Jen Lin, of National Taiwan University, Taipei. See "Programming
Collective Intelligence," [2] among others, for a usage example.

Note: There exist two other Ruby bindings for LIBSVM. One is named
Ruby SVM, written by Rudi Cilibrasi. It is hard to find now. The
other, more actively developed one is libsvm-ruby-swig by Tom Zeng
[3], which is built using SWIG.

## Dependencies

None.  Libsvm is bundled with the project.  Just install and go!

Currently includes libsvm version 3.12.

## Installation

    gem install rb-libsvm

## Usage

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

## Author, License

Written by C. Florian Ebeling. This software can be freely used under
the terms of the MIT license, see file MIT-LICENSE.

This package includes the source of LIBSVM, which is free to use under
the license in the file LIBSVM-LICENSE.

## Contributors

[Rimas Silkaitis](https://github.com/neovintage)

[Aleksander Pohl](https://github.com/apohllo)

### Posts about SVMs and Ruby

[http://neovintage.blogspot.com/2011/11/text-classification-using-support.html](http://neovintage.blogspot.com/2011/11/text-classification-using-support.html)

[http://www.igvita.com/2008/01/07/support-vector-machines-svm-in-ruby/](http://www.igvita.com/2008/01/07/support-vector-machines-svm-in-ruby/)



[1]: [http://www.csie.ntu.edu.tw/~cjlin/libsvm/](http://www.csie.ntu.edu.tw/~cjlin/libsvm/)

[2]: [http://books.google.com/books?id=fEsZ3Ey-Hq4C](http://books.google.com/books?id=fEsZ3Ey-Hq4C)

[3]: http://github.com/tomz/libsvm-ruby-swig/tree/master
