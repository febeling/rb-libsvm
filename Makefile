
all: ext/libsvm.bundle spec

ext/Makefile:
	cd ext ; ruby extconf.rb

ext/libsvm.bundle: ext/Makefile
	cd ext ; make

spec:
	spec test

clean:
	cd ext ; make clean
	rm ext/Makefile