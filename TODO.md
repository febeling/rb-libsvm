# TODO

These functions from the library are not bound as ruby methods:

`void svm_get_labels(const struct svm_model *model, int *label);`

`double svm_get_svr_probability(const struct svm_model *model);`

`void svm_destroy_param(struct svm_parameter *param);`

The model holds reference to the parameters struct, so it's not
obvious when it's safe to use.

`int svm_check_probability_model(const struct svm_model *model);`
