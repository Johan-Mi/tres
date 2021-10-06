project.sb3: program.scratch assets/**/*
	scratch-compiler-exe

program.scratch: src/*.scratch
	cpp -w -nostdinc -P src/main.scratch -o program.scratch

.PHONY: clean
clean:
	rm -f program.scratch project.sb3
