require 'libsvm_ext'

module Libsvm

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
            raise(ArgumentError.new("Argument has to be Hash, Array or various Floats."))
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

    end
  end # class Node

end

