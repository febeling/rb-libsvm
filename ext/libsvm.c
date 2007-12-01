#include "ruby.h"
#include "svm.h"
#include "ruby-ext.h"
#include <string.h>

VALUE mLibsvm;
VALUE mKernelType;
VALUE mSvmType;

VALUE cNode;
VALUE cProblem;
VALUE cSvmParameter;

/* Libsvm::Node 
struct svm_node
{
	int index;
	double value;
};
*/
static struct svm_node *node_new() {
  struct svm_node *n;
  n = (struct svm_node *) calloc(1,sizeof(struct svm_node));
  if(n == NULL)
    return NULL;
  return n;
}
	
static void node_free(struct svm_node *n) {
  free(n);
}

static VALUE node_alloc(VALUE cls) {
  struct svm_node *n;
  n = node_new();
  if(n == NULL)
    rb_raise(rb_eNoMemError, "Not enough memory for allocating Node.");
  
  return Data_Wrap_Struct(cls, 0, node_free, n);
}

rx_def_accessor(cNode,struct svm_node,int,index);
rx_def_accessor(cNode,struct svm_node,double,value);
 
/* Libsvm::Problem
struct svm_problem
{
	int l;
	double *y;           class/label of example
	struct svm_node **x; features of example
};
*/
static struct svm_problem *problem_new() {
  struct svm_problem *n;
  n = (struct svm_problem *) calloc(1,sizeof(struct svm_problem));
  if(n == NULL)
    return NULL;
  return n;
}

static void problem_free(struct svm_problem *n) {
  int i;
  if(n->l > 0) {
    free(n->y);
    for(i = 0; i < (n->l); ++i) {
      free(*(n->x+i));
    }
    free(n->x);
  }
  free(n);
}

static VALUE problem_alloc(VALUE cls) {
  struct svm_problem *n;
  n = problem_new();
  if(n == NULL)
    rb_raise(rb_eNoMemError, "Not enough memory for allocating Libsvm::Problem.");
  return Data_Wrap_Struct(cls, 0, problem_free, n);
}

rx_def_accessor(cProblem,struct svm_problem,int,l);

/* 
   call-seq:
     problem.set_examples(labels, examples_array)

   double *y; // class/label of the example
   struct svm_node **x; 

   This method sets the contents of an SVM Problem, which consists
   of lables (or classifications) and examples (or feature vectors).
   If those 2 don't match in length and ArgumentError is raised.
*/
static VALUE cProblem_examples_set(VALUE obj,VALUE labels_ary,VALUE nodes_arys_ary) {
  struct svm_problem *prob;
  struct svm_node *node_struct, terminator;
  VALUE num;
  int i, j, k, nodes_ary_len;
  VALUE label, node, nodes_ary;

  terminator = (struct svm_node) { -1, 0.0 };

  num = rx_ary_size(labels_ary);
  if(num != rx_ary_size(nodes_arys_ary)) {
    rb_raise(rb_eArgError, "Number of labels (%i) does not match number of features (%i).", num, rx_ary_size(nodes_arys_ary));
  }

  Data_Get_Struct(obj, struct svm_problem, prob); 
  
  if(prob->l > 0) {
    free(prob->y);
    for(i = 0; i < num+1; ++i) {
      free(*(prob->x+i));
    }
    free(prob->x);
  }

  prob->y = (double *)calloc(num,sizeof(double));
  if(prob->y == 0) {
    rb_raise(rb_eNoMemError, "%s:%i", __FILE__,__LINE__);
  }
  prob->x = (struct svm_node **)calloc(num,sizeof(struct svm_node *));
  if(prob->x == 0) {
    rb_raise(rb_eNoMemError, "%s:%i", __FILE__,__LINE__);
  }

  for(i = 0; i < num; ++i) {
    *(prob->y+i) =  NUM2DBL(rb_ary_entry(labels_ary,i));

    nodes_ary =     rb_ary_entry(nodes_arys_ary,i);
    nodes_ary_len = rx_ary_size(nodes_ary);
    *(prob->x+i) = (struct svm_node *)calloc(nodes_ary_len+1,sizeof(struct svm_node));
    if(*(prob->x+i) == 0) {
      rb_raise(rb_eNoMemError, "on Libsvm::Node allocation" " %s:%i", __FILE__,__LINE__);
    }

    for(j = 0; j < nodes_ary_len; ++j) {
      node = rb_ary_entry(nodes_ary,j);
      Data_Get_Struct(node,struct svm_node,node_struct);
      memcpy(*(prob->x+i)+j,node_struct,sizeof(struct svm_node));
    }
    memcpy(*(prob->x+i)+nodes_ary_len,&terminator,sizeof(struct svm_node));
  }

  prob->l = num;

  return INT2FIX(num);
}

/* 
   call-seq:
     labels, array_of_arrays = problem.examples

   double *y; // class/label of the example
   struct svm_node **x; 
*/
static VALUE cProblem_examples(VALUE problem) {
  struct svm_problem *prob;
  struct svm_node *node, *node_copy;
  double label;
  struct svm_node *features;
  VALUE labels_ary, examples_ary, example_ary, v_node, result;
  int i,n;

  Data_Get_Struct(problem, struct svm_problem, prob); 

  labels_ary = rb_ary_new2(prob->l);
  examples_ary = rb_ary_new2(prob->l);
  
  features = (struct svm_node *)calloc(prob->l, sizeof(struct svm_node));
  if(features == 0) {
    rb_raise(rb_eNoMemError, "on allocating Libsvm::Node" " %s:%i", __FILE__,__LINE__);
  }

  for(i = 0; i < prob->l; ++i) {
    label = *(prob->y+i);
    rb_ary_push(labels_ary,rb_float_new(label));

    node = *(prob->x+i); /* example start pointer */
    example_ary = rb_ary_new();
    while(node->index != -1) {
      node_copy = (struct svm_node *)malloc(sizeof(struct svm_node));
      if(node_copy == 0) {
	rb_raise(rb_eNoMemError, "on allocating Libsvm::Node" " %s:%i", __FILE__,__LINE__);
      }
      memcpy(node_copy,node,sizeof(struct svm_node));
      v_node = Data_Wrap_Struct(cNode,0,node_free,node_copy);
      rb_ary_push(example_ary,v_node);
      ++node;
    }
    rb_ary_push(examples_ary,example_ary);
  }

  result = rb_ary_new2(2);
  rb_ary_push(result,labels_ary);
  rb_ary_push(result,examples_ary);

  return result;
}

/* SvmParameter */

static struct svm_parameter *parameter_new() {
  struct svm_parameter *n;
  n = (struct svm_parameter *) calloc(1,sizeof(struct svm_parameter));
  if(n == NULL)
    return NULL;
  return n;
}
	
static void parameter_free(struct svm_parameter *n) {
  free(n);
}

static VALUE parameter_alloc(VALUE cls) {
  struct svm_parameter *n;
  n = parameter_new();
  if(n == NULL)
    rb_raise(rb_eNoMemError, "Not enough memory for allocating SvmParameter.");
  
  return Data_Wrap_Struct(cls, 0, parameter_free, n);
}

rx_def_accessor(cSvmParameter,struct svm_parameter,int,svm_type)
rx_def_accessor(cSvmParameter,struct svm_parameter,int,kernel_type);
rx_def_accessor(cSvmParameter,struct svm_parameter,int,degree);
rx_def_accessor(cSvmParameter,struct svm_parameter,double,gamma);
rx_def_accessor(cSvmParameter,struct svm_parameter,double,coef0);
rx_def_accessor(cSvmParameter,struct svm_parameter,double,cache_size);
rx_def_accessor(cSvmParameter,struct svm_parameter,double,eps);
rx_def_accessor_as(cSvmParameter,struct svm_parameter,double,C,c);

/* 	int *weight_label; 

    nr_weight, weight_label, and weight are used to change the penalty
    for some classes (If the weight for a class is not changed, it is
    set to 1). This is useful for training classifier using unbalanced
    input data or with asymmetric misclassification cost.

    nr_weight is the number of elements in the array weight_label and
    weight. Each weight[i] corresponds to weight_label[i], meaning that
    the penalty of class weight_label[i] is scaled by a factor of weight[i].
    
    If you do not want to change penalty for any of the classes,
    just set nr_weight to 0.

*/
static VALUE cSvmParameter_label_weights_set(VALUE obj,VALUE weight_hash) {
  struct svm_parameter *param;
  int i,len,weight_label;
  double weight;
  VALUE keys,key,val;
  
  Data_Get_Struct(obj,struct svm_parameter,param);

  if(param->nr_weight > 0) {
    free(param->weight);
    free(param->weight_label);
  }

  param->nr_weight = NUM2INT(rx_hash_size(weight_hash));
  param->weight = (double *)calloc(param->nr_weight,sizeof(double));
  param->weight_label = (int *)calloc(param->nr_weight,sizeof(int));

  keys = rb_funcall(weight_hash, rb_intern("keys"),0);
  for(i = 0; i < param->nr_weight; ++i) {
    key = rb_ary_entry(keys,i);
    val = rb_hash_aref(weight_hash,key);
    
    weight_label = NUM2INT(key);
    weight = rb_float_new(val);

    param->weight[i] = weight;
    param->weight_label[i] = weight_label;
  }

  return Qnil;
}
static VALUE cSvmParameter_label_weights(VALUE obj) {
  // TODO
  return Qnil;
}

rx_def_accessor(cSvmParameter,struct svm_parameter,double,nu);
rx_def_accessor(cSvmParameter,struct svm_parameter,double,p);
rx_def_accessor(cSvmParameter,struct svm_parameter,int,shrinking);
rx_def_accessor(cSvmParameter,struct svm_parameter,int,probability);

void Init_libsvm_ext() {
  mLibsvm = rb_define_module("Libsvm");

  /* Libsvm::Problem */
  cProblem = rb_define_class_under(mLibsvm, "Problem", rb_cObject);
  rb_define_alloc_func(cProblem, problem_alloc);
  rx_reg_accessor(cProblem,l);
  rb_define_method(cProblem,"set_examples",cProblem_examples_set,2);
  rb_define_method(cProblem,"examples",cProblem_examples,0);

  /* Libsvm::SvmParameter */
  cSvmParameter = rb_define_class_under(mLibsvm, "SvmParameter", rb_cObject);
  rb_define_alloc_func(cSvmParameter, parameter_alloc);
  rx_reg_accessor(cSvmParameter,svm_type);
  rx_reg_accessor(cSvmParameter,kernel_type);
  rx_reg_accessor(cSvmParameter,degree);
  rx_reg_accessor(cSvmParameter,gamma);
  rx_reg_accessor(cSvmParameter,coef0);
  rx_reg_accessor(cSvmParameter,cache_size);
  rx_reg_accessor(cSvmParameter,eps);
  rx_reg_accessor_as(cSvmParameter,C,c);
  /*   rb_define_method(cSvmParameter,"label_weights=",cSvmParameter_label_weights_set,1); */
  /*   rb_define_method(cSvmParameter,"label_weights",cSvmParameter_label_weight,0); */
  rx_reg_accessor(cSvmParameter,nu);
  rx_reg_accessor(cSvmParameter,p);
  rx_reg_accessor(cSvmParameter,shrinking);
  rx_reg_accessor(cSvmParameter,probability);

  /* Libsvm::Node */
  cNode = rb_define_class_under(mLibsvm, "Node", rb_cObject);
  rb_define_alloc_func(cNode, node_alloc);
  rx_reg_accessor(cNode,index);
  rx_reg_accessor(cNode,value);

  mKernelType = rb_define_module_under(mLibsvm,"KernelType");
  rb_define_const(mKernelType, "LINEAR", INT2NUM(LINEAR));
  rb_define_const(mKernelType, "POLY", INT2NUM(POLY));
  rb_define_const(mKernelType, "RBF", INT2NUM(RBF));
  rb_define_const(mKernelType, "SIGMOID", INT2NUM(SIGMOID));
  rb_define_const(mKernelType, "PRECOMPUTED", INT2NUM(PRECOMPUTED));

  mSvmType = rb_define_module_under(mLibsvm,"SvmType");
  rb_define_const(mSvmType, "C_SVC", INT2NUM(C_SVC));
  rb_define_const(mSvmType, "NU_SVC", INT2NUM(NU_SVC));
  rb_define_const(mSvmType, "ONE_CLASS", INT2NUM(ONE_CLASS));
  rb_define_const(mSvmType, "EPSILON_SVR", INT2NUM(EPSILON_SVR));
  rb_define_const(mSvmType, "NU_SVR", INT2NUM(NU_SVR));
}

