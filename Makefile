
spec=`which spec`

all: spec

mkmf: ext/Makefile

ext/Makefile:
	cd ext ; ruby extconf.rb

libsvm_ext: ext/Makefile ext/libsvm.c
	cd ext ; make

spec: libsvm_ext
	spec test

clean:	
	rm ext/Makefile ext/*.i ext/*.o ext/*.s ext/mkmf.log
	cd ext ; make clean

debug: libsvm_ext
	gdb --args ruby ${spec} test

valgrind: libsvm_ext
	valgrind --suppressions=ferret_valgrind.supp --leak-check=full --show-reachable=yes ruby ${spec} test
