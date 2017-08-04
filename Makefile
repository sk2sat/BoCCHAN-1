
hello:hello.c
	sh4-linux-gnu-gcc $< -o $@

screen:
	screen /dev/ttyUSB0 115200
