module Libsvm
  class Model
    alias_method :org_predict, :predict
    alias_method :org_predict_probability, :predict_probability

    def predict(example, &block)
      if block.nil?
        return org_predict(example)
      else
        prediction, probabilities = predict_probability(example)
        yield probabilities
        return prediction
      end
    end
    def predict_probability(example)
      probabilities = Array.new(self.classes)
      return [self.org_predict_probability(example, probabilities), probabilities]
    end
  end
end