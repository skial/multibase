# multibase

> A Haxe implementation of [multibase](https://github.com/multiformats/multibase)

### Tested Targets

| Php | Python | Java | C# | Js/Node | Interp | Neko | HashLink | Lua | CPP |
| - | -| - | - | - | -| - | - | - | - |
| ✅ | ✅     | ✅  | ✅ | ✅     | ✅ | ❌  | ❌       | ➖ | ➖ |

##### Notes
- Lua and CPP targets not tested.
- HashLink currently failing tests.
- Neko fails to compile.

### Supported Bases

##### Notes
- Base1 and Base8 are not supported.

| encoding |           code | description |
| - | - | - |
| identity |           0x00 | 8-bit binary (encoder and decoder keeps data unmodified) |
| ~~base1~~ |      ~~1~~ |    ~~unary (11111)~~ |
| base2 |              0 |    binary (01010101) |
| ~~base8~~ |      ~~7~~ |    ~~octal~~ |
| base10 |             9 |    decimal |
| base16 |             f |    hexadecimal |
| base16upper |        F |    hexadecimal |
| base32hex |          v |    rfc4648 no padding - highest char |
| base32hexupper |     V |    rfc4648 no padding - highest char |
| base32hexpad |       t |    rfc4648 with padding |
| base32hexpadupper |  T |    rfc4648 with padding |
| base32 |             b |    rfc4648 no padding |
| base32upper |        B |    rfc4648 no padding |
| base32pad |          c |    rfc4648 with padding |
| base32padupper |     C |    rfc4648 with padding |
| base32z |            h |    z-base-32 (used by Tahoe-LAFS) |
| base58flickr |       Z |    base58 flicker |
| base58btc |          z |    base58 bitcoin |
| base64 |             m |    rfc4648 no padding |
| base64pad |          M |    rfc4648 with padding - MIME encoding |
| base64url |          u |    rfc4648 no padding |
| base64urlpad |       U |    rfc4648 with padding |

