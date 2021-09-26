project.sb3: program.scratch
	scratch-compiler-exe

program.scratch: main.scratch char-costumes.scratch assets/**/*
	cpp -w -nostdinc -P main.scratch -o program.scratch

.PHONY: clean
clean:
	rm -f program.scratch project.sb3
