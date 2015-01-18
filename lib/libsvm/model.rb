module Libsvm
  class Model
    alias_method :classes, :classes_count

    alias_method :support_vectors, :support_vectors_count
  end
end
