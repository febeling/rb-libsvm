#include "ruby.h"
#include "svm.h"
#include "ruby-ext.h"
#include <string.h>

const struct svm_node Null_Node = { 0, 0.0 };

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
  //  printf("node pointer: %x\n", n);
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
  //  printf("problem pointer: %x\n", n);
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
  struct svm_node *node_struct;
  VALUE num;
  int i, j, k, nodes_ary_len;
  VALUE label, node, nodes_ary;

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
      rb_raise(rb_eNoMemError, "%s:%i", __FILE__,__LINE__);
    }

    for(j = 0; j < nodes_ary_len; ++j) {
      node = rb_ary_entry(nodes_ary,j);
      Data_Get_Struct(node,struct svm_node,node_struct);
      memcpy(*(prob->x+i)+j,node_struct,sizeof(struct svm_node));
    }
    node_struct = *(prob->x+i)+j+1; // terminator.
    node_struct = node_new();
  }

  prob->l = num;

  return Qnil;
}


/* SvmParameter */

void Init_libsvm_ext() {
  mLibsvm = rb_define_module("Libsvm");

  /* Libsvm::Problem */
  cProblem = rb_define_class_under(mLibsvm, "Problem", rb_cObject);
  rb_define_alloc_func(cProblem, problem_alloc);
  rx_reg_accessor(cProblem,l);
  rb_define_method(cProblem,"set_examples",cProblem_examples_set,2);

  /* Libsvm::SvmParameter */
  cSvmParameter = rb_define_class_under(mLibsvm, "SvmParameter", rb_cObject);

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

