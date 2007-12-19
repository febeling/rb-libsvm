require 'libsvm_ext'

module Libsvm

  class Node
    class << self

      def features(ary)
        index = 0
        ary.map do |value|
          node = Node.new
          node.index = index
          index += 1
          node.value = value
          node
        end
      end

    end
  end # class Node

end
