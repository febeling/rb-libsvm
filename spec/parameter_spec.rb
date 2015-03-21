require "spec_helper"

describe "A Parameter has accessors for" do
  before do
    @p = Libsvm::SvmParameter.new
  end
  it "int svm_type" do
    expect(SvmType::C_SVC).to eq(0)
    @p.svm_type = SvmType::C_SVC
    expect(@p.svm_type).to eq(SvmType::C_SVC)
  end

  it "int kernel_type" do
    expect(KernelType::RBF).to eq(2)
    @p.kernel_type = KernelType::RBF
    expect(@p.kernel_type).to eq(KernelType::RBF)
  end

  it "int degree" do
    @p.degree = 99
    expect(@p.degree).to eq(99)
  end

  it "double gamma" do
    @p.gamma = 0.33
    expect(@p.gamma).to eq(0.33)
  end

  it "double coef0" do
    @p.coef0 = 0.99
    expect(@p.coef0).to eq(0.99)
  end

  it "double cache_size" do
    @p.cache_size = 0.77
    expect(@p.cache_size).to eq(0.77)
  end

  it "double eps" do
    @p.eps = 0.111
    expect(@p.eps).to eq(0.111)
    @p.eps = 0.112
    expect(@p.eps).to eq(0.112)
  end

  it "double C" do
    @p.c = 3.141
    expect(@p.c).to eq(3.141)
  end

  it "can set and read weights (weight, weight_label, nr_weight members from struct)" do
    @p.label_weights = {1 => 1.2, 3 => 0.2, 5 => 0.888}
    expect(@p.label_weights).to eq({1 => 1.2, 3 => 0.2, 5 => 0.888})
  end

  it "double nu" do
    @p.nu = 1.1
    expect(@p.nu).to eq(1.1)
  end

  it "double p" do
    @p.p = 0.123
    expect(@p.p).to eq(0.123)
  end

  it "boolean-as-int shrinking" do
    @p.shrinking = 22
    expect(@p.shrinking).to eq(22)
  end

  it "boolean-as-int probability" do
    @p.probability = 35
    expect(@p.probability).to eq(35)
  end
end
