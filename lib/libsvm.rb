require 'libsvm_ext'

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
        ary = nil
        if vargs.size == 1
          if vargs.first.respond_to?(:flatten)
            ary = vargs.first
          elsif vargs.first.respond_to?(:each_pair)
            nodes = []
            vargs.first.to_hash.each_pair do |index, value|
              node = Node.new
              node.index = index
              node.value = value
              nodes << node
            end
            return nodes
          else 
            raise(ArgumentError.new("Argument has to be Hash, Array or Float varargs."))
          end
        else
          ary = vargs
        end
        index = 0 
        ary.map do |value|
          node = Node.new
          node.index = index
          node.value = value
          index += 1
          node
        end
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
