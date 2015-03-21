require "spec_helper"

describe "construction of a Node" do
  it "using the properties" do
    n = Node.new
    n.index = 11
    n.value = 0.11
    expect(n.index).to eq 11
    expect(n.value).to be_within(0.0001).of(0.11)
  end

  it "using the :[] method" do
    n = Node[12, 0.12]
    expect(n.index).to eq 12
    expect(n.value).to be_within(0.00001).of(0.12)
  end

  it "using the constructor parameters" do
    n = Node.new(14, 0.14)
    expect(n.index).to eq 14
    expect(n.value).to be_within(0.0001).of(0.14)
  end
end

describe "A Node" do
  before do
    @node = Node.new
  end

  it "can be created" do
    expect(@node).not_to be_nil
  end

  it "has in :index property" do
    @node.index = 99
    expect(@node.index).to eq(99)
  end

  it "has a :value porperty" do
    @node.value = 3.141
    expect(@node.value).to be_within(0.00001).of(3.141)
  end

  it "has inited properties" do
    expect(@node.index).to eq(0)
    expect(@node.value).to be_within(0.00001).of(0)
  end

  it "class can create nodes from an array" do
    ary = Node.features([0.1, 0.2, 0.3, 0.4, 0.5])
    expect(ary).to all(be_a(Node))
    expect(ary.map(&:value)).to eq([0.1, 0.2, 0.3, 0.4, 0.5])
    expect(ary.map(&:index)).to eq([0, 1, 2, 3, 4])
  end

  it "class can create nodes from variable parameters" do
    ary = Node.features(0.1, 0.2, 0.3, 0.4, 0.5)
    expect(ary).to all(be_a(Node))
    expect(ary.map(&:value)).to eq([0.1, 0.2, 0.3, 0.4, 0.5])
    expect(ary.map(&:index)).to eq([0, 1, 2, 3, 4])
  end

  it "class can create nodes from hash" do
    ary = Node.features(3=>0.3, 5=>0.5, 6=>0.6, 10=>1.0)
    expect(ary).to all(be_a(Node))
    expect(ary.map(&:value)).to eq([0.3, 0.5, 0.6, 1.0])
    expect(ary.map(&:index)).to eq([3, 5, 6, 10])
  end

  it "implements value equality" do
    expect(Node[1, 0.1]).to eq(Node[1, 0.1])
  end
end
