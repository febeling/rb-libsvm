require 'mkmf'

$CFLAGS << " -save-temps -ggdb3 "
$LDFLAGS << " -lstdc++ "

find_header('ruby.h')
find_library('svm', 'svm_train', '/opt/local/lib/', '/usr/lib/') || raise("svm library not found.")
find_header('svm.h', "/opt/local/include/", "/usr/include/libsvm-2.0/libsvm/")
create_makefile('libsvm_ext')
