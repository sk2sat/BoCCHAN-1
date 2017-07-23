BoCCHAN-1
=========

A toolkit for use BoCCHAN-1 OBC without hodoyoshi-SDK


Dependencies:
-------------
* Docker


Run Docker Container
--------------------
```
$ sudo docker build -t bocchan-1 .
$ sudo docker run -t -i --device=/dev/ttyUSB0 bocchan1 bash
```

Test
----
```
root@docker:~# make
```

