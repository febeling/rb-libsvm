require 'spec_helper'

describe "A Problem" do
  before(:each) do
    @problem = Problem.new
    @features = [ Node.features(0.2,0.3,0.4,0.4),
                  Node.features(0.1,0.5,0.1,0.9),
                  Node.features(0.2,0.2,0.6,0.5),
                  Node.features(0.3,0.1,0.5,0.9) ]
  end

  it "examples get stored and retrieved" do
    @problem.set_examples([1,2,1,2], @features)
    labels, examples =  @problem.examples
    expect(labels.size).to eq(4)
    expect(examples.size).to eq(4)
    expect(examples.map {|x|x.size}).to eq([4,4,4,4])
    expect(examples.first.map {|node| node.index}).to eq([0,1,2,3])
    expect(examples.first.map {|node| node.value}).to eq([0.2,0.3,0.4,0.4])
  end

  it "can be populated" do
    examples = [ Node.features(0.2,0.3,0.4,0.4),
                 Node.features(0.1,0.5,0.1,0.9),
                 Node.features(0.2,0.2,0.6,0.5),
                 Node.features(0.3,0.1,0.5,0.9) ]
    expect {
      @problem.set_examples([1,2,1,2], examples)
    }.to_not raise_error
  end

  it "can be set twice" do
    expect {
      features = [Node.features(0.2, 0.3, 0.4, 0.4), Node.features(0.3,0.1,0.5,0.9)]
      @problem.set_examples([1,2], features)
      features = [Node.features(0.2, 0.3, 0.4, 0.4), Node.features(0.3,0.1,0.5,0.9)]
      @problem.set_examples([8,2], features)
    }.to_not raise_error
  end

end
