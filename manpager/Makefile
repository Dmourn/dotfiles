
manpager:
	gcc -o $@ $@.c

install: manpager
	install -m 0755 $^ /usr/local/bin

clean:
	rm manpager

