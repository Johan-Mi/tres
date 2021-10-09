project.sb3: src/*.scratch assets/**/*
	scratch-compiler-exe src/main.scratch

.PHONY: clean
clean:
	rm -f project.sb3
