require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

include Libsvm

describe "A Problem" do
  before do
    @problem = Problem.new
  end

  it "creates" do
    @problem.should_not be_nil
  end
end
