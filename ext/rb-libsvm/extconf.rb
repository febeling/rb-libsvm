require 'mkmf'

# $CFLAGS << " -save-temps -ggdb3 "
# $LDFLAGS << " -lstdc++ "

# find_header('ruby.h')
# find_library('svm', 'svm_train', '/opt/local/lib/', '/usr/lib/') || raise("svm library not found.")
# find_header('svm.h', "/opt/local/include/", "/usr/include/libsvm-2.0/libsvm/")
# create_makefile('libsvm_ext')

LIBDIR = Config::CONFIG['libdir']
INCLUDEDIR = Config::CONFIG['includedir']

HEADER_DIRS = [
  # First search /opt/local for macports
  '/opt/local/include',

  # Then search /usr/local for people that installed from source
  '/usr/local/include',

  # Check the ruby install locations
  INCLUDEDIR,

  # Finally fall back to /usr
  '/usr/include',
]

LIB_DIRS = [
  # First search /opt/local for macports
  '/opt/local/lib',

  # Then search /usr/local for people that installed from source
  '/usr/local/lib',

  # Check the ruby install locations
  LIBDIR,

  # Finally fall back to /usr
  '/usr/lib',
]

dir_config('rb-libsvm',HEADER_DIRS,LIB_DIRS)

# Don't think I need to search the dirs for the header file

create_makefile('rb-libsvm/libsvm')
