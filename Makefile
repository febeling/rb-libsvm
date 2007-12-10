
spec=`which spec`

all: spec

pp: libsvm_ext
	cp ext/libsvm.i libsvm_pp.c
	astyle --style=kr libsvm_pp.c
	less -p mLibsvm libsvm_pp.c

mkmf: ext/Makefile

ext/Makefile: ext/extconf.rb
	cd ext ; ruby extconf.rb

libsvm_ext: ext/Makefile ext/libsvm.c ext/ruby-ext.h
	cd ext ; make

spec: libsvm_ext
	${spec} test

test: spec

clean:
	cd ext ; make clean
	rm ext/Makefile ext/mkmf.log 

debug: libsvm_ext
	gdb --args ruby ${spec} test

valgrind: libsvm_ext
	valgrind --suppressions=ferret_valgrind.supp --leak-check=full --show-reachable=yes ruby ${spec} test
