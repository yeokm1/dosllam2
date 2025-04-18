TARGET = dosllam2
OBJS = dosllam2.obj
CFLAGS = -za99
LDFLAGS = SYSTEM dos32a NAME $(TARGET)

all: clean $(TARGET).exe

$(TARGET).obj: dosllam2.c
	wcc386 $(CFLAGS) dosllam2.c

$(TARGET).exe: $(OBJS)
	wlink $(LDFLAGS) FILE $(OBJS)

clean: .symbolic
	@del *.obj
	@del $(TARGET).exe