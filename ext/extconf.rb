require 'mkmf'

$CFLAGS << " -save-temps -ggdb3 "

find_header('ruby.h')
find_header('svm.h', "/usr/include/libsvm-2.0/libsvm/")
create_makefile('libsvm_ext')
