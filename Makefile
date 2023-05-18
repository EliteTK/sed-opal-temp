CFLAGS ?= -O2 -g -Wall -Werror
CFLAGS += -std=gnu99
CPPFLAGS += -D_GNU_SOURCE -D__CHECK_ENDIAN__

OBJS := sed.o argconfig.o suffix.o plugin.o

default: sed-opal

sed-opal: $(OBJS)
	  $(LINK.o) $^ $(LDLIBS) -o $@

clean:
	$(RM) *.o sed-opal

.PHONY: default clean
