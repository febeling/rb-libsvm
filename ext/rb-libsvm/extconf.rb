require 'mkmf'

# $CFLAGS << " -save-temps -ggdb3 "
$LDFLAGS << " -lstdc++ "

HEADER_DIRS = []
LIB_DIRS = []

dir_config('rb-libsvm',HEADER_DIRS,LIB_DIRS)

create_makefile('rb-libsvm/libsvm')
