# Makefile
#
# This file is written for use on Mac OS X.
#

CC=gcc
LUADIR=${HOME}/Downloads/lua/lua-5.4.3/src
TARGET=apidemo.so

all: ${TARGET}

apidemo.o: apidemo.c
	${CC} -o $@ -Wall -fPIC -c $< -I${LUADIR}

apidemo.so: apidemo.o
	${CC} -o $@ -shared $<

clean:
	rm -f ${TARGET} *.o
