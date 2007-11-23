
all: spec

ext/Makefile:
	cd ext ; ruby extconf.rb

ext/libsvm_ext.bundle: ext/Makefile ext/libsvm.c
	cd ext ; make

spec: ext/libsvm_ext.bundle
	spec test

clean:
	cd ext ; make clean
	rm ext/Makefile

debug: ext/libsvm_ext.bundle
	gdb --args ruby /opt/local/bin/spec test