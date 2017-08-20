all:
	clang -c -fblocks -fPIC Interface.m -o wk.o
	ar rcs libWebKitSystemInterfaceLinux.a wk.o
