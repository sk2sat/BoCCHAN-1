FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
	make \
	gcc-sh4-linux-gnu \
	screen
WORKDIR /root
ADD Makefile .
ADD hello.c .
