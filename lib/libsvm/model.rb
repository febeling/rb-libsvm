module Libsvm
  class Model
    # @deprecated Use {#classes_count} instead
    alias_method :classes, :classes_count

    # @deprecated Use {#support_vectors_count} instead
    alias_method :support_vectors, :support_vectors_count
  end
end
