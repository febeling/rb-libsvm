module Libsvm
  # Represents a feature
  #
  # A feature has an index and a value.
  #
  # An array of features (Libsvm::Node instances) represents an
  # example which can be classified, or in greater number can
  # constitute the main part of a training set (Libsvm::Prolem).
  #
  # This class represents the struct
  # svm_node[https://github.com/cjlin1/libsvm/blob/master/README#L357].
  #
  # @see Libsvm::Problem Libsvm::Problem, the training set class
  class Node
    class << self
      # Create an array of features from collection or variable number
      # of float values.
      #
      # Indices are converted to Integer, values are converted to
      # Float. When passed a variable number of Float values or an
      # array of Floast, the index is implied by the arguments
      # position. Collection of tuples of hash arguments afford sparse
      # feature arrays. These can represent features which don't have
      # consecutive indices starting at zero.
      #
      # @overload features(0.3, 0.7, 0.8, ...)
      # @param vararg variable number of value arguments, or
      #
      # @overload features([0.3, 0.7, 0.8, ...])
      # @param array an array of values, or
      #
      # @overload features([[0, 0.3], [1, 0.7], [2, 0.8], ...])
      # @param array an array of [index, value] tuples, or
      #
      # @overload features(0 => 0.3, 1 => 0.7, 2 => 0.8, 99 => 0.1)
      # @param hash a hash from index to value
      #
      # @return [Array<Libsvm::Node>] example, i.e. an array of features
      def features(*vargs)
        array_of_nodes = []
        if vargs.size == 1
          argument = vargs.first
          if argument.class == Array
            case argument.first
            when Array
              argument.each do |pair|
                array_of_nodes << Node.new(pair.first.to_i, pair.last.to_f)
              end
            else
              argument.each_with_index do |value, index|
                array_of_nodes << Node.new(index.to_i, value.to_f)
              end
            end
          elsif argument.class == Hash
            argument.each do |index, value|
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

      # Create a feature node.
      #
      #   Libsvm::Node[0, 1.1] # => #<Libsvm::Node: index=0, value=1.1>
      #
      # @return [Libsvm::Node]
      def [](index, value)
        new(index, value)
      end
    end

    # @!attribute index
    #   The index identifies the feature for which this node represents a value

    # @!attribute value
    #   The value of this feature in this instance

    # Create a new feature node.
    #
    #   Libsvm::Node.new(0, 1.1) # => #<Libsvm::Node: index=0, value=1.1>
    def initialize(index=0, value=0.0)
      self.index = index
      self.value = value
    end

    # Compare features for equality.
    #
    # Nodes with equal index and value are equal.
    #
    # @return [Boolean]
    def ==(other)
      index == other.index && value == other.value
    end

    def inspect # :nodoc:
      vars = %w(index value).map { |name|
        "#{name}=#{send(name)}"
      }.join(", ")
      "#<#{self.class}: #{vars}>"
    end
  end
end
