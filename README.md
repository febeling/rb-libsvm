# rb-libsvm -- Ruby language bindings for LIBSVM

Spec Status: [![Build Status](https://secure.travis-ci.org/febeling/rb-libsvm.png)](http://travis-ci.org/febeling/rb-libsvm)

This is a module which provides a Ruby API to the LIBSVM [1] library.
SVM is a machine learning and classification algorithm, and LIBSVM is
a popular free implementation of it, written by Chih-Chung Chang and
Chih-Jen Lin, of National Taiwan University, Taipei. See "Programming
Collective Intelligence," [2] among others, for a usage example.

Note: There exists another Ruby binding for LIBSVM, named Ruby SVM,
[3] written by Rudi Cilibrasi. (That's the one mentioned in the
libsvm documentation.) This package is not related but written
independently and from scratch.

## Dependencies

None.  Libsvm is bundled with the project.  Just install and go!

Currently using libsvm version 3.1

## Installation

    gem install rb-libsvm

## Usage

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

    pred = model.predict(Node.features(1, 1, 1))
    puts "Example [1, 1, 1] - Predicted #{pred}"


## Author, License

Written by C. Florian Ebeling. This software can be freely used under
the terms of the MIT license, see file MIT-LICENSE.

## Contributors

Rimas Silkaitis

### Notes

fn1. http://www.csie.ntu.edu.tw/~cjlin/libsvm/

fn2. http://books.google.com/books?id=fEsZ3Ey-Hq4C

fn3. http://rubysvm.cilibrar.com/


