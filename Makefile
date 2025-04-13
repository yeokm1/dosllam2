TARGET = dosllam2
OBJS = dosllam2.obj
CFLAGS = -zdp -za99
LDFLAGS = SYSTEM dos4g NAME $(TARGET)

all: $(TARGET).exe

$(TARGET).obj: dosllam2.c
	wcc386 $(CFLAGS) dosllam2.c

$(TARGET).exe: $(OBJS)
	wlink $(LDFLAGS) FILE $(OBJS)

clean:
	@del *.obj
	@del *.exe