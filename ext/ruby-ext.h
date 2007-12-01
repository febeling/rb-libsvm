
#define rx_reg_accessor(CLASS,ATTR)		\
  rx_reg_accessor_as(CLASS,ATTR,ATTR)

#define rx_reg_accessor_as(CLASS,ATTR,RNAME)				\
  rb_define_method(CLASS, #RNAME, CLASS ## _ ## RNAME, 0);		\
  rb_define_method(CLASS, #RNAME "=", CLASS ## _ ## RNAME ## _set, 1)

#define rx_from_int(val) INT2NUM(val)
#define rx_to_int(val) NUM2INT(val)
#define rx_from_double(val) rb_float_new(val)
#define rx_to_double(val) NUM2DBL(val)

#define rx_def_accessor(CLASS,STRUCT,MEMBER_TYPE,ATTR)		\
  rx_def_accessor_as(CLASS,STRUCT,MEMBER_TYPE,ATTR,ATTR)

#define rx_def_accessor_ptr(CLASS,STRUCT,MEMBER_TYPE,ATTR)	\
  rx_def_accessor0(CLASS,STRUCT,MEMBER_TYPE,ATTR,ATTR,*)

#define rx_def_accessor_as(CLASS,STRUCT,MEMBER_TYPE,ATTR,RNAME)	\
  rx_def_accessor0(CLASS,STRUCT,MEMBER_TYPE,ATTR,RNAME,)

#define rx_def_accessor0(CLASS,STRUCT,MEMBER_TYPE,ATTR,RNAME,DEREF)  \
  static VALUE CLASS ## _ ## RNAME(VALUE obj) {			     \
    STRUCT *struct_var;						     \
    Data_Get_Struct(obj, STRUCT, struct_var);			     \
    return rx_from_ ## MEMBER_TYPE(DEREF struct_var->ATTR);	     \
  }								     \
								     \
  static VALUE CLASS ## _ ## RNAME ## _set(VALUE obj,VALUE val) {    \
    STRUCT *struct_var;						     \
    Data_Get_Struct(obj, STRUCT, struct_var);			     \
    DEREF struct_var->ATTR = rx_to_ ## MEMBER_TYPE(val);	     \
    return Qnil;						     \
  }

#define rx_ary_size(ary)				\
  NUM2INT(rb_funcall((ary), rb_intern("size"), 0))
#define rx_hash_size(hsh)				\
  NUM2INT(rb_funcall((hsh), rb_intern("size"), 0))


