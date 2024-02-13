SRC_FILES=$(shell find src -type f)
ASSETS=$(shell find assets -type f)
FS_CONTENT=$(shell find fs)

AS := nasm
ASFLAGS := -felf64
LDFLAGS := -lm

project.sb3: $(SRC_FILES) $(ASSETS) create-fs.scratch
	scratch-compiler-exe compile src/main.scratch

project.o: $(SRC_FILES) $(ASSETS) create-fs.scratch
	scratch-compiler-exe compile --target=x86_64 src/main.scratch

project: project.o prelude.o

create-fs.scratch: $(FS_CONTENT)
	./rebuild-fs

.PHONY: clean
clean:
	@$(RM) -v project.sb3 project *.o
