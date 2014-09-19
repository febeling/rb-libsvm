require 'libsvm'
require 'set'

include Libsvm

if ARGV.size != 1
  puts "Usage: ruby examples/iris.rb iris.data"
  puts
  puts "Needs the Iris data set"
  puts "  http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
  exit 1
end

# Read data
lines = IO.readlines(ARGV.shift).map(&:strip).shuffle
instances = lines.map { |line| line.split(',') }

# Create array of feature nodes per instance
examples = instances.map { |instance|
  sepal_length, sepal_width, petal_length, petal_width = *instance[0..3].map(&:to_f)
  Node.features(sepal_length, sepal_width, petal_length, petal_width)
}

# Pluck class property (Iris name)
label_names = instances.map(&:last)

# Deduplicate and assign indexes
label_indexes  = label_names.to_set.to_a

# Array of label indexes of instances
labels = label_names.map { |label_name| label_indexes.index(label_name) }

# Create problem traning set
problem = Problem.new
problem.set_examples(labels, examples)

# Use various kernel types
[:LINEAR, :POLY, :RBF, :SIGMOID].each do |type|

  # Create some parameters
  parameter = SvmParameter.new
  parameter.cache_size  = 10 # in megabytes
  parameter.eps         = 0.00001
  parameter.degree      = 5
  parameter.gamma       = 0.01
  parameter.c           = 100
  parameter.kernel_type = KernelType.const_get(type)

  # Different nfold sizes. It's the number of parts the data is
  # split into.
  [10, 20].each do |nfold|
    result          = Model.cross_validation(problem, parameter, nfold)
    predicted_name  = result.map { |label| label_indexes[label] }
    correctness     = predicted_name.map.with_index { |p, i| p == label_names[i] }

    correct = correctness.select { |x| x }
    accuracy = correct.size.to_f / correctness.size
    acc_str = "%.2f" % accuracy
    puts "Accuracy[type = #{type}, nfold = #{nfold}] : #{acc_str}"
  end
end
