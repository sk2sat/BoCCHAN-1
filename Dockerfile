FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
	make \
	gcc-sh4-linux-gnu \
	g++-sh4-linux-gnu \
	qemu-system-sh4 \
	screen \
	minicom
WORKDIR /root
