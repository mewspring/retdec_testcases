all: a.exe a_dec.c

%.exe: %_orig.c
	i686-w64-mingw32-gcc -static -o $@ $<

%_dec.c: %.exe
	decompile.sh -o $@ $<
