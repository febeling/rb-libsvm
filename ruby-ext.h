
#define rx_reg_accessor(CLASS,ATTR)                                 \
  rb_define_method(CLASS, #ATTR, CLASS ## _ ## ATTR, 0);            \
  rb_define_method(CLASS, #ATTR "=", CLASS ## _ ## ATTR ## _set, 1)

#define rx_from_int(val) INT2NUM(val)
#define rx_to_int(val) NUM2INT(val)
#define rx_from_double(val) rb_float_new(val)
#define rx_to_double(val) rb_float_new(val)

#define rx_def_accessor(CLASS,STRUCT,MEMBER_TYPE,ATTR)               \
static VALUE CLASS ## _ ## ATTR(VALUE obj) {                         \
  STRUCT *struct_var;                                                \
  Data_Get_Struct(obj, STRUCT, struct_var);                          \
  return rx_from_ ## MEMBER_TYPE(struct_var->ATTR);                  \
}                                                                    \
static VALUE CLASS ## _ ## ATTR ## _set(VALUE obj,VALUE val) {       \
  STRUCT *struct_var;                                                \
  Data_Get_Struct(obj, STRUCT, struct_var);                          \
  struct_var->ATTR = rx_to_ ## MEMBER_TYPE(val);                     \
  return Qnil;                                                       \
}

static VALUE rx_ary_size(VALUE ary) {
  return NUM2INT(rb_funcall(ary, rb_intern("size"), 0));
}


