C_SRC=$(wildcard src/*.c)
C_OBJ=$(patsubst src/%.c,build/%.obj,$(C_SRC))

.SILENT:

.PHONY: default always

default: always $(OUT)/armcc.exe

out/armcc.exe: $(C_OBJ)
	$(LD) $(LDFLAGS) $(C_OBJ) /OUT:$@

build/%.obj: src/%.c
	$(CC) $(CFLAGS) $< /c /Fo$@

always:
	mkdir -p build
	mkdir -p out

clean:
	rm -rf build
	rm -rf out