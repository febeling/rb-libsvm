require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

include Libsvm

describe "Basic usage" do
  before do
    @problem = Problem.new
    @parameter = SvmParameter.new
    @parameter.cache_size = 1 # mb

    # "eps is the stopping criterion (we usually use 0.00001 in nu-SVC,
    # 0.001 in others)." (from README)
    @parameter.eps = 0.001 

    @parameter.c = 10
  end

  it "is as in [PCI,217]" do
    examples = [ [1,0,1], [-1,0,-1] ].map {|ary| Node.features(ary) }
    labels = [1, -1]
    @problem.set_examples(labels, examples)

    model = Model.train(@problem, @parameter)

    pred = model.predict(Node.features(1, 1, 1))
    pred.should == 1.0

    pred = model.predict(Node.features(-1, 1, -1))
    pred.should == -1.0

    pred = model.predict(Node.features(-1, 55, -1))
    pred.should == -1.0
  end
end
