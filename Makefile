BIN=mdns-repeater
LIBS=-luci
CFLAGS=-Os
LDFLAGS=-s
OBJS=$(BIN).o

$(BIN): $(OBJS)
	$(CC) $(LDFLAGS) -o $(@) $< $(LIBS)

