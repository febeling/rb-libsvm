require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

include Libsvm

describe "A Node" do
  before do
    @node = Node.new
  end

  it "can be created" do
    @node.should_not be_nil
  end

  it "does not segfault on setting propertjies" do
    @node.index = 99
    @node.index.should == 99
    @node.value = 3.141
    @node.value.should be_close(3.141,0.00001)
  end

  it "has inited properties" do
    @node.index.should == 0
    @node.value.should be_close(0, 0.00001)
  end
end
