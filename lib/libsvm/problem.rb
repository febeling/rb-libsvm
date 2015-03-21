module Libsvm
  # This file only contains documentation comments. See
  # ext/libsvm/libsvm.c for implementation.

  # Represents a training set (alternatively called `problem').
  #
  # In contains labels and examples in equal number.
  #
  # This class represents the struct
  # svm_problem[https://github.com/cjlin1/libsvm/blob/master/README#L319].
  class Problem

    # @!attribute [r] l
    #
    # The number of labels and examples in this traning set. (The name
    # is lowercase-L.)
    #
    # @return [Integer]
  end
end
