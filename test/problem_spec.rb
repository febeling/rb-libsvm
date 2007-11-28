require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"
require "yaml"

include Libsvm

describe "A Problem" do
  before do
    @problem = Problem.new
  end

  it "examples get stored and retrieved" do
    features = [Node.features([0.2,0.3,0.4,0.4]),
                Node.features([0.1,0.5,0.1,0.9]),
                Node.features([0.2,0.2,0.6,0.5]),
                Node.features([0.3,0.1,0.5,0.9])]
    @problem.set_examples([1,2,1,2], features)
    labels,examples =  @problem.examples
    labels.size.should == 4
    examples.size.should == 4
    examples.map {|x|x.size}.should == [4,4,4,4]
    examples.first.map {|node| node.index}.should == [0,1,2,3]
    examples.first.map {|node| node.value}.should == [0.2,0.3,0.4,0.4]
  end

  it "can be instantiated" do
    @problem.should_not be_nil
  end

  it "can be populated" do
    features = [Node.features([0.2,0.3,0.4,0.4]),
                Node.features([0.1,0.5,0.1,0.9]),
                Node.features([0.2,0.2,0.6,0.5]),
                Node.features([0.3,0.1,0.5,0.9])]
    @problem.set_examples([1,2,1,2], features)
  end

  it "can be set twice over" do 
    features = [Node.features([0.2, 0.3, 0.4, 0.4]), Node.features([0.3,0.1,0.5,0.9])]
    @problem.set_examples([1,2], features)
    features = [Node.features([0.2, 0.3, 0.4, 0.4]), Node.features([0.3,0.1,0.5,0.9])]
    @problem.set_examples([8,2], features)
  end
    
end
