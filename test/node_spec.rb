require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

include Libsvm

describe "construction of a Node" do
  it "using the properties" do
    n = Node.new
    n.index = 11
    n.value = 0.11
    n.index.should == 11
    n.value.should be_close(0.11, 0.0001)
  end

  it "using the :[] method" do
    n = Node[12, 0.12]
    n.index.should == 12
    n.value.should be_close(0.12, 0.00001)
  end

  it "using the constructor parameters" do
    n = Node.new(14, 0.14)
    n.index.should == 14
    n.value.should be_close(0.14, 0.0001)
  end
end

describe "A Node" do
  before do
    @node = Node.new
  end

  it "can be created" do
    @node.should_not be_nil
  end

  it "does not segfault on setting properties" do
    @node.index = 99
    @node.index.should == 99
    @node.value = 3.141
    @node.value.should be_close(3.141,0.00001)
  end

  it "has inited properties" do
    @node.index.should == 0
    @node.value.should be_close(0, 0.00001)
  end

  it "class can create nodes from an array" do
    ary = Node.features([0.1, 0.2, 0.3, 0.4, 0.5])
    ary.map {|n| n.class.should == Node}
    ary.map {|n| n.value }.should == [0.1, 0.2, 0.3, 0.4, 0.5]
  end

  it "class can create nodes from variable parameters" do
    ary = Node.features(0.1, 0.2, 0.3, 0.4, 0.5)
    ary.map {|n| Node.should === n }
    ary.map {|n| n.value }.should == [0.1, 0.2, 0.3, 0.4, 0.5]
  end

  it "class can create nodes from hash" do
    ary = Node.features({3=>0.3, 5=>0.5, 6=>0.6, 10=>1.0})
    ary.map {|n| n.class.should == Node}
    ary.map {|n| n.value }.sort.should == [0.3, 0.5, 0.6, 1.0]
    ary.map {|n| n.index }.sort.should == [3, 5, 6, 10]
  end

  it "implements a value-like equality, not identity-notion" do
    Node[1, 0.1].should == Node[1, 0.1]
  end
end
