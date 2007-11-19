
all: ext/libsvm.bundle test

ext/Makefile:
	cd ext ; ruby extconf.rb

ext/libsvm.bundle: ext/Makefile
	cd ext ; make

spec:
	spec test