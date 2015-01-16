require 'spec_helper'

describe "Create examples" do
  describe "from a hash" do
    example = {11 => 0.11, 21 => 0.21, 101 => 0.99 }.to_example
    example.should == Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 })
  end

  describe "from an array of tuples" do
    it "can create example from array" do
      example = [ [11, 0.11], [21, 0.21], [101, 0.99] ].to_example
      example.should == Node.features({11 => 0.11, 21 => 0.21, 101 => 0.99 })
    end
  end
end
