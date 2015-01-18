require 'spec_helper'

describe "Create examples" do
  describe "from a hash" do
    example = { 11 => 0.11, 21 => 0.21, 101 => 0.99 }.to_example.sort_by(&:index)
    example.should == Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 }).sort_by(&:index)
  end

  describe "from an array of tuples" do
    it "can create example from array of pairs" do
      example = [ [11, 0.11], [21, 0.21], [101, 0.99] ].to_example
      example.should == Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 }).sort_by(&:index)
    end
  end
end
