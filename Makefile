CFLAGS += -Wall -g
PROGS=hellomalaga
BINDIR = /usr/bin
all: $(PROGS)

simpleserver: hellomalaga.c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o
	rm -f $(PROGS)

install:
	mkdir -p $(TARGET_DIR)$(BINDIR)
	install -m 755 $(PROGS) $(TARGET_DIR)$(BINDIR
