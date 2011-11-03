require "spec_helper"

describe "A Parameter has accessors for" do
	before do
		@p = Libsvm::SvmParameter.new
	end
	it "int svm_type" do
		SvmType::C_SVC.should == 0
		@p.svm_type = SvmType::C_SVC
		@p.svm_type.should == SvmType::C_SVC
	end

	it "int kernel_type" do
		KernelType::RBF.should == 2
		@p.kernel_type = KernelType::RBF
		@p.kernel_type.should == KernelType::RBF
	end

	it "int degree" do
		@p.degree = 99
		@p.degree.should == 99
	end

	it "double gamma" do
		@p.gamma = 0.33
		@p.gamma.should == 0.33
	end

	it "double coef0" do
		@p.coef0 = 0.99
		@p.coef0.should == 0.99
	end

	it "double cache_size" do
		@p.cache_size = 0.77
		@p.cache_size.should == 0.77
	end

	it "double eps" do
		@p.eps = 0.111
		@p.eps.should == 0.111
		@p.eps = 0.112
		@p.eps.should == 0.112
	end

	it "double C" do
		@p.c = 3.141
		@p.c.should == 3.141
	end

	it "can set and read weights (weight, weight_label, nr_weight members from struct)" do
		@p.label_weights = {1=> 1.2, 3=>0.2, 5=>0.888}
		@p.label_weights.should == {1=> 1.2, 3=>0.2, 5=>0.888}
	end


	it "double nu" do
		@p.nu = 1.1
		@p.nu.should == 1.1
	end

	it "double p" do
		@p.p = 0.123
		@p.p.should == 0.123
	end

	it "int shrinking" do
		@p.shrinking = 22
		@p.shrinking.should == 22
	end

	it "int probability" do
		@p.probability = 35
		@p.probability.should == 35
	end
end
