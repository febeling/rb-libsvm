require 'rb-libsvm/version'
require 'rb-libsvm/libsvm'

module Libsvm

  module CoreExtensions
    module Collection
      def to_example
        Node.features(self)
      end
    end
  end

  class Node

    class << self

      def features(*vargs)
        array_of_nodes = []
				if vargs.size == 1
					if vargs.first.class == Array
						vargs.first.each_with_index do |value, index|
							array_of_nodes << Node.new(index.to_i, value.to_f)
						end
					elsif vargs.first.class == Hash
						vargs.first.each do |index, value|
							array_of_nodes << Node.new(index.to_i, value.to_f)
						end
					else
						raise(ArgumentError.new("Node features need to be a Hash, Array or Floats"))
					end
				else
					vargs.each_with_index do |value, index|
						array_of_nodes << Node.new(index.to_i, value.to_f)
					end
				end
				array_of_nodes
      end

      def [](index, value)
        new(index, value)
      end
    end

    def initialize(index=0, value=0.0)
      self.index = index
      self.value = value
    end

    def ==(other)
      index == other.index && value == other.value
    end
  end

end


class Hash
  include Libsvm::CoreExtensions::Collection
end
class Array
  include Libsvm::CoreExtensions::Collection
end
