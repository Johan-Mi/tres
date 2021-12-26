SRC_FILES=$(shell find src -type f)
ASSETS=$(shell find assets -type f)

project.sb3: $(SRC_FILES) $(ASSETS)
	scratch-compiler-exe src/main.scratch

.PHONY: clean
clean:
	rm -f project.sb3
