.DEFAULT_GOAL := 64

32:
	gcc -g -Wall -m32 -o bin/chall src/chall.c

64:
	gcc -g -Wno-unused-result -Wno-free-nonheap-object ./src/chall.c -o ./bin/chall

patch:
	patchelf --set-interpreter ./bin/ld-2.23.so --set-rpath ./bin/ ./bin/chall

arm:
	aarch64-linux-gnu-gcc -g -Wall -static -o bin/chall src/chall.c

debug:
  gdb-multiarch -q --nh -ex 'file chall' -ex 'target remote localhost:9999' -x ~/.gdbinit


clean:
	$(RM) dist/*
