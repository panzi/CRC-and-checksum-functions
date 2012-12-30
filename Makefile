CC=gcc
CFLAGS=-Wall -pedantic -std=c99 -O2 -fmessage-length=0 -g -DTEST

.PHONY: all clean

all: arccrc16 crc_16f crc_32 checksum checkexe

arccrc16: arccrc16.c crc.h
	$(CC) $(CFLAGS) -o $@ $<

crc_16f: crc_16f.c crc.h
	$(CC) $(CFLAGS) -o $@ $<

crc_32: crc_32.c crc.h
	$(CC) $(CFLAGS) -o $@ $<

checksum: checksum.c crc.h
	$(CC) $(CFLAGS) -o $@ $<

checkexe: checkexe.c crc.h
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm arccrc16 crc_16f crc_32 checksum checkexe
