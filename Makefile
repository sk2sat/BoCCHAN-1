SH4	:= sh4-linux-gnu-
CC	:= $(SH4)gcc
CXX	:= $(SH4)g++

HODOSDK		= ./hodosdk/
CXXFLAGS	= -I$(HODOSDK)include/
CXXFLAGS	+= -O0 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"
LDFLAGS 	= -L$(HODOSDK)lib
LDFLAGS 	+= -lpthread -lm -lhodoyoshi -lrt
# どうにかしてuClibcを使わないといけない

%.o:%.c
	$(CXX) $(CXXFLAGS) $< -o $@

hello:hello.o
	$(CXX) $(LDFLAGS) -o $@ $^

screen:
	screen /dev/ttyUSB0 115200
