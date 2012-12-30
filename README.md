SNIPPETS CRC and checksum functions
===================================

Copy of the CRC and checksum functions from
[c.snippets.org](http://c.snippets.org/snip_lister.php?fname=crc.h)
(site no longer exists, but a backup can be found on
[archive.org](http://web.archive.org/web/20080303093609/http://c.snippets.org/snip_lister.php?fname=crc.h)).

I ceaned the code up a tiny bit so it compiles with `gcc -Wall -pedantic -std=c99`.
I added missing return type declarations and replaced `sniptype.h`, `BYTE`, `WORD`,
`DWORD`, `Boolean_T` etc. with `stdint.h`, `stdbool.h`, `uint8_t`, `uint16_t`,
`uint32_t`, `bool` etc. These changes require a C99 compatible compiler. This
should also make it 64bit compatible.
