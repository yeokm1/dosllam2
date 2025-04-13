TARGET = dosllm2
OBJS = dosllm2.obj
CFLAGS = -zdp -za99
LDFLAGS = SYSTEM dos4g NAME $(TARGET)

all: $(TARGET).exe

$(TARGET).obj: dosllm2.c
	wcc386 $(CFLAGS) dosllm2.c

$(TARGET).exe: $(OBJS)
	wlink $(LDFLAGS) FILE $(OBJS)

clean:
	@del *.obj
	@del *.exe