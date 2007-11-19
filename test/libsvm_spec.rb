require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

describe "Something" do
  before do
    @problem = Libsvm::Problem.new
  end

  it "create" do
    @problem.should_not be_nil
  end
end
