require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

include Libsvm

describe "A Problem" do
  before do
    @problem = Problem.new
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

#   it "can be set twice over" do 
#     features = [Node.features([0.2,0.3,0.4,0.4]), Node.features([0.3,0.1,0.5,0.9])]
#     @problem.set_examples([1,2], features)
#     features = [Node.features([0.2,0.3,0.4,0.4]), Node.features([0.3,0.1,0.5,0.9])]
#     @problem.set_examples([8,2], features)
    
#   end
end
