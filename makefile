SRC_FILES=$(shell find src -type f)
ASSETS=$(shell find assets -type f)
FS_CONTENT=$(shell find fs)

project.sb3: $(SRC_FILES) $(ASSETS) create-fs.scratch
	scratch-compiler-exe src/main.scratch

create-fs.scratch: $(FS_CONTENT)
	./rebuild-fs

.PHONY: lint
lint: $(SRC_FILES)
	scratch-compiler-exe --lint src/main.scratch

.PHONY: clean
clean:
	rm -f project.sb3
