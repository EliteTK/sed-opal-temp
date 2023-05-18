CFLAGS ?= -O2 -g -Wall -Werror
CFLAGS += -std=gnu99
CPPFLAGS += -D_GNU_SOURCE -D__CHECK_ENDIAN__

OBJS := sed.o argconfig.o suffix.o plugin.o

default: sed-opal compile_flags.txt

sed-opal: $(OBJS)
	  $(LINK.o) $^ $(LDLIBS) -o $@

compile_flags.txt: Makefile
	printf "%s\n" $(CFLAGS) $(CPPFLAGS) >$@

clean:
	$(RM) *.o sed-opal compile_flags.txt

.PHONY: default clean
