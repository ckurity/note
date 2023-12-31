- 
- [References](#references)

-------------------------------------------

Not installed by default in Kali

## 
```sh
sudo apt install xxd
```

## 
```sh
$ xxd -h
Usage:
       xxd [options] [infile [outfile]]
    or
       xxd -r [-s [-]offset] [-c cols] [-ps] [infile [outfile]]
Options:
    -a          toggle autoskip: A single '*' replaces nul-lines. Default off.
    -b          binary digit dump (incompatible with -ps,-i). Default hex.
    -C          capitalize variable names in C include file style (-i).
    -c cols     format <cols> octets per line. Default 16 (-i: 12, -ps: 30).
    -E          show characters in EBCDIC. Default ASCII.
    -e          little-endian dump (incompatible with -ps,-i,-r).
    -g bytes    number of octets per group in normal output. Default 2 (-e: 4).
    -h          print this summary.
    -i          output in C include file style.
    -l len      stop after <len> octets.
    -n name     set the variable name used in C include output (-i).
    -o off      add <off> to the displayed file position.
    -ps         output in postscript plain hexdump style.
    -r          reverse operation: convert (or patch) hexdump into binary.
    -r -s off   revert with <off> added to file positions found in hexdump.
    -d          show offset in decimal instead of hex.
    -s [+][-]seek  start at <seek> bytes abs. (or +: rel.) infile offset.
    -u          use upper case hex letters.
    -R when     colorize the output; <when> can be 'always', 'auto' or 'never'. Default: 'auto'.
    -v          show version: "xxd 2023-10-25 by Juergen Weigert et al.".
```

## 
```sh
$ xxd -h 2>&1 | grep \\-b
    -b          binary digit dump (incompatible with -ps,-i). Default hex.

$ xxd <<< abc 
00000000: 6162 630a                                abc.

$ xxd -b <<< abc
00000000: 01100001 01100010 01100011 00001010                    abc.
```

## 
```sh
$ xxd -h 2>&1 | grep \\-c
       xxd -r [-s [-]offset] [-c cols] [-ps] [infile [outfile]]
    -c cols     format <cols> octets per line. Default 16 (-i: 12, -ps: 30).

$ xxd -c1 <<< abc
00000000: 61  a
00000001: 62  b
00000002: 63  c
00000003: 0a  .
```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

