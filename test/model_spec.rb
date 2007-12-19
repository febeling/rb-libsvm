require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"

include Libsvm

# struct svm_model *svm_train(const struct svm_problem *prob, const struct svm_parameter *param);
# void svm_cross_validation(const struct svm_problem *prob, const struct svm_parameter *param, int nr_fold, double *target);

# int svm_save_model(const char *model_file_name, const struct svm_model *model);
# struct svm_model *svm_load_model(const char *model_file_name);

# int svm_get_svm_type(const struct svm_model *model);
# int svm_get_nr_class(const struct svm_model *model);
# void svm_get_labels(const struct svm_model *model, int *label);
# double svm_get_svr_probability(const struct svm_model *model);

# void svm_predict_values(const struct svm_model *model, const struct svm_node *x, double* dec_values);
# double svm_predict(const struct svm_model *model, const struct svm_node *x);
# double svm_predict_probability(const struct svm_model *model, const struct svm_node *x, double* prob_estimates);

# void svm_destroy_model(struct svm_model *model);
# void svm_destroy_param(struct svm_parameter *param);

# const char *svm_check_parameter(const struct svm_problem *prob, const struct svm_parameter *param);
# int svm_check_probability_model(const struct svm_model *model);

module ModelSpecHelper

  def create_example
    Node.features([0.2,0.3,0.4,0.5])
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
    parameter = Libsvm::SvmParameter.new
    parameter.cache_size = 50 # mb
    parameter.eps = 0.01
    parameter.c = 10
    parameter
  end

end

describe "The Libsvm::Model class interface" do
  include ModelSpecHelper

  before do
    @problem = create_problem
    @parameter = create_parameter
  end

  it "results from training on a problem under a certain parameter set" do
    model = Model.train(@problem,@parameter)
    model.should_not be_nil
  end

  #   it "can do cross-validation" do
  #     labels = Model.cross_validation(@problem,@parameter,@times)
  #     labels.should_not be_nil
  #   end

  #   it "can be loaded" do
  #     model = Model.load("svm_model.model")
  #     model.should_not be_nil
  #   end

end

describe "An Libsvm model" do
  include ModelSpecHelper

  before do
    @problem = create_problem
    @parameter = create_parameter
    @model = Model.train(@problem,@parameter)
  end

  #   it "can be saved to a file" do
  #     file_path = "svm_model.model"
  #     @model.save(file_path)
  #     File.exist?(file_path).should be_true
  #   end

  #   it "can be asked for it's svm_type" do
  #     @model.svm_type.should_not be_nil
  #   end

  #   it "can be asked for it's number of classes (aka. labels)" do
  #     @model.classes.should_not be_nil
  #   end

#   it "can predict" do
#     prediction = @model.predict(create_example)
#     prediction.should_not be_nil
#   end

  #   it "gets destroyed properly" do
  #     #?
  #   end

end

