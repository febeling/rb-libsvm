require 'spec_helper'

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

  it "has a nice API" do
    example = {11 => 0.11, 21 => 0.21, 101 => 0.99 }.to_example
    example.should == Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 })
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

  it "kernel parameter use" do
    @parameter.kernel_type = SvmParameter::KernelType::RBF
    examples = [[1, 2, 3], [-2, -2, -2]].map {|ary| Node.features(ary) }
    @problem.set_examples([1, 2], examples)

    model = Model.train(@problem, @parameter)

    model.predict(Node.features(1, 2, 3)).should == 2
  end
end
