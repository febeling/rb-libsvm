require 'libsvm/version'
require 'libsvm/libsvm_ext'
require 'libsvm/node'

module Libsvm
  module CoreExtensions
    module Collection
      def to_example
        Node.features(self)
      end
    end
  end
end

class Hash
  include Libsvm::CoreExtensions::Collection
end
class Array
  include Libsvm::CoreExtensions::Collection
end
