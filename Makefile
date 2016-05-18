include Makefile.param

CFLAGS +=
LIBS +=

SRCS    :=  $(wildcard *.c)
OBJS    :=  $(SRCS:%.c=%.o)

TARGET := $(CURRENT_DIR)
.PHONY : clean all

.cc.o: $(CXX) -c $(CXXFLAGS) $(INCPATH) -o $@ $<
.c.o: $(CC) -c $(CFLAGS) $(INCPATH) -o $@ $<

all: $(TARGET)

$(TARGET): $(OBJS) 
	$(LD) $(LDFLAGS) -o $(TARGET) $(OBJS) $(LIBS)

clean:
	@rm -f $(TARGET)
	@rm -f $(OBJS)
