require 'libsvm/version'
require 'libsvm/libsvm_ext'
require 'libsvm/node'

module Libsvm
  module CoreExtensions
    module Collection
      # @!method to_example
      #
      # Converts this collection into an array of feature.
      #
      #   { 1 => 0.4, 3 => 0.5, 5 => 0.9 }.to_example
      #   # => [#<Libsvm::Node: index=1, value=0.4>, #<Libsvm::Node: index=3, value=0.5>, #<Libsvm::Node: index=5, value=0.9>]
      #   { 1 => 0.4, 3 => 0.5, 5 => 0.9 }.to_example
      #   # => [#<Libsvm::Node: index=1, value=0.4>, #<Libsvm::Node: index=3, value=0.5>, #<Libsvm::Node: index=5, value=0.9>]
      #   [0.4, 0.5, 0.9].to_example
      #   # => [#<Libsvm::Node: index=0, value=0.4>, #<Libsvm::Node: index=1, value=0.5>, #<Libsvm::Node: index=2, value=0.9>]
      #   [ [1, 0.4], [3, 0.5], [5, 0.9] ].to_example
      #   # => [#<Libsvm::Node: index=1, value=0.4>, #<Libsvm::Node: index=3, value=0.5>, #<Libsvm::Node: index=5, value=0.9>]
      #
      # An array of features is the type used for classification and model learning.
      #
      # @note In an upcoming major release this core extension will become no longer included in Hash and Array, but rather be optional.
      #
      # @return [Array<Libsvm::Node>]
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
