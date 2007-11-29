require "#{File.dirname(__FILE__)}/test_helper"
require "libsvm"


# 	int svm_type;
# 	int kernel_type;
# 	int degree;	/* for poly */
# 	double gamma;	/* for poly/rbf/sigmoid */
# 	double coef0;	/* for poly/sigmoid */

# 	/* these are for training only */
# 	double cache_size; /* in MB */
# 	double eps;	/* stopping criteria */
# 	double C;	/* for C_SVC, EPSILON_SVR and NU_SVR */
# 	int nr_weight;		/* for C_SVC */
# 	int *weight_label;	/* for C_SVC */
# 	double* weight;		/* for C_SVC */
# 	double nu;	/* for NU_SVC, ONE_CLASS, and NU_SVR */
# 	double p;	/* for EPSILON_SVR */
# 	int shrinking;	/* use the shrinking heuristics */
# 	int probability; /* do probability estimates */

include Libsvm

describe "A Parameter has accessors for" do
  before do
    @p = Libsvm::SvmParameter.new
  end
  it "int svm_type" do
    SvmType::C_SVC.should == 0
    @p.svm_type = Libsvm::SvmType::C_SVC
    @p.svm_type.should == SvmType::C_SVC
  end
end
