hello.a: hello.c
	gcc hello.c -o hello.a

test:
	./hello.a
