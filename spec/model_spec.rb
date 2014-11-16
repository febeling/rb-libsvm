require "spec_helper"

module ModelSpecHelper

  def create_example
    Node.features(0.2, 0.3, 0.4, 0.5)
  end

  def create_problem
    problem = Problem.new
    features = [Node.features([0.2,0.3,0.4,0.4]),
      Node.features([0.1,0.5,0.1,0.9]),
      Node.features([0.2,0.2,0.6,0.5]),
      Node.features([0.3,0.1,0.5,0.9])]
    problem.set_examples([1,2,1,2], features)
    problem
  end

  def create_parameter
    parameter = SvmParameter.new
    parameter.cache_size = 50 # mb
    parameter.eps = 0.01
    parameter.c = 10
    parameter.probability = 1
    parameter.kernel_type = Libsvm::KernelType::LINEAR
    parameter.shrinking = 0
    parameter.degree = 1
    parameter
  end

end

describe "The Libsvm::Model class interface" do
  include ModelSpecHelper

  before(:each) do
    @problem = create_problem
    @parameter = create_parameter
  end

  it "results from training on a problem under a certain parameter set" do
    expect(Model.train(@problem, @parameter)).not_to be_nil
  end

  let(:labels) { Model.cross_validation(@problem, @parameter, fold=2) }

  it "can do cross-validation" do
    expect(labels).to contain_exactly(
      an_instance_of(Float),
      an_instance_of(Float),
      an_instance_of(Float),
      an_instance_of(Float))
  end

  it "number of labels" do
    expect(labels.length).to eq(4)
  end
end

describe "A saved model" do
  include ModelSpecHelper

  before(:each) do
    @filename = "tmp/svm_model.model"
    model = Model.train(create_problem, create_parameter)
    model.save(@filename)
  end

  it "can be loaded" do
    expect(Model.load(@filename)).to be_an_instance_of(Model)
  end

  after(:each) do
    File.delete(@filename) rescue nil
  end
end

describe "A Libsvm model" do
  include ModelSpecHelper

  before(:each) do
    @problem = create_problem
    @parameter = create_parameter
    @model = Model.train(@problem, @parameter)
    @file_path = "tmp/svm_model.model"
    File.delete(@file_path) if File.exists?(@file_path)
  end

  describe "basic operations" do
    it "can be saved to a file" do
      expect {
        @model.save(@file_path)
      }.to change { File.exist?(@file_path) }.from(false).to(true)
    end

    it "can be asked for its svm_type" do
      expect(@model.svm_type).to eq SvmType::C_SVC
    end

    it "can be asked for its number of classes (aka. labels)" do
      expect(@model.classes).to eq(2)
    end
  end

  describe "predict" do
    it "returns floats" do
      expect(@model.predict(create_example)).to be_an_instance_of(Float)
    end
  end

  describe "support_vectors" do
    it "returns count" do
      expect(@model.support_vectors).to eq(3)
    end
  end

  describe "predict_probability" do
    let(:result) { @model.predict_probability(create_example) }
    let(:prediction) { result.first }
    let(:probabilities) { result.last }

    it "produces prediction" do
      expect(prediction).not_to be_nil
    end

    it "produces probabilities for each class" do
      expect(probabilities.length).to eq(@model.classes)
    end

    it "can predict probability" do
      probabilities.each do |p|
        expect(p).to be_an_instance_of(Float)
      end
    end
  end
end
