module Libsvm
  # This file only contains documentation comments. See
  # ext/libsvm/libsvm.c for implementation.

  # Represents the learning parameter struct.
  #
  # This class represents the struct
  # svm_parameter[https://github.com/cjlin1/libsvm/blob/master/README#L366].
  module SvmParameter

    # @!attribute label_weights
    #
    # Hash with indices of labels as keys and weights as values.
    #
    # These weights are used to change the penalty for specific labels
    # (classes). If the weight for a label is not changed, it is set
    # to 1.
  end
end
