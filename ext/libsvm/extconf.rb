require 'mkmf'

# $CFLAGS << " -save-temps -ggdb3 "
$LDFLAGS << " -lstdc++ "

HEADER_DIRS = []
LIB_DIRS = []

dir_config('libsvm', HEADER_DIRS, LIB_DIRS)

create_makefile('libsvm/libsvm_ext')
