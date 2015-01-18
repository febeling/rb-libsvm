module Libsvm
  # This file only contains documentation comments. See
  # ext/libsvm/libsvm.c for implementation.

  # Represents the learning parameter struct.
  #
  # The parameters in this object control how the SVM model is trained
  # specifically.
  #
  # This class represents the struct
  # svm_parameter[https://github.com/cjlin1/libsvm/blob/master/README#L366].
  class SvmParameter

    # @!attribute svm_type
    #
    # Type of SVM to use. This parameter controls if the model
    # classifies or performs regression, if a one-class model is
    # built, or if the NU variant of SVM is used.
    #
    # @see Libsvm::SvmType Libsvm::SvmType for value constants
    # @return [C_SVC, NU_SVC, ONE_CLASS, EPSILON_SVR, NU_SVR]

    # @!attribute kernel_type
    #
    # Type of kernel to use.
    #
    # @see Libsvm::KernelType Libsvm::KernelType for kernel_type constants
    # @return [LINEAR, POLY, RBF, SIGMOID, PRECOMPUTED]


    # @!attribute degree
    #
    # Degree parameter, relevant for POLY kernel type.
    #
    # @see Libsvm::KernelType Libsvm::KernelType for kernel_type constants
    # @return [Float]

    # @!attribute gamma
    #
    # Gamma parameter, relevant for kernel types RBF, SIGMOID and POLY.
    #
    # @see Libsvm::KernelType Libsvm::KernelType for kernel_type constants
    # @return [Float]

    # @!attribute coef0
    #
    # Coeffectient 0, relevant for kernel types SIGMOID and POLY.
    #
    # @see Libsvm::KernelType Libsvm::KernelType for kernel_type constants
    # @return [Float]

    # @!attribute cache_size
    #
    # Size of the kernel cache, in mega-bytes.
    #
    # @return [Integer]

    # @!attribute eps
    #
    # Stopping criterion parameter.
    #
    # @return [Float]

    # @!attribute c
    #
    # The parameter C to use for this model.
    #
    # @return [Float]

    # @!attribute label_weights
    #
    # Hash with indices of labels as keys and weights as values.
    #
    # These weights are used to change the penalty for specific labels
    # (classes). If the weight for a label is not changed, it is set
    # to 1.0.
    #
    # @return [Hash]

    # @!attribute nu
    #
    # The nu parameter in nu-SVM, nu-SVR, and one-class-SVM (i.e. when
    # the Libsvm::SvmParameter#svm_type is given as NU_SVC, NU_SVR or
    # ONE_CLASS).
    #
    # @see Libsvm::SvmType Libsvm::SvmType for svm_type constants
    # @return [Float]

    # @!attribute p
    #
    # The epsilon in epsilon-insensitive loss function of epsilon-SVM
    # regression (i.e. when the Libmsvm::SvmParameter#svm_type is
    # given as Libsvm::SvmType::EPSILON_SVR).
    #
    # @return [Float]

    # @!attribute shrinking
    #
    # Integer interpreted as boolean value.
    #
    # Controls if shrinking heuristics is used.
    #
    # @return [Integer] 0 meaning false, 1 true

    # @!attribute probability
    #
    # Integer interpreted as boolean value.
    #
    # Controls if the model can create probability values for
    # classifications in addition to the classification.
    #
    # @return [Integer] 0 meaning false, 1 true

  end
end
