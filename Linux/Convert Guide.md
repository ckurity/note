# Convert Guide

- [Hexadecimal to Text](#hexadecimal-to-text)
- [Binary to Text](#binary-to-text)

### Hexadecimal to Text
Example from HTB Mantis
```sh
-r          reverse operation: convert (or patch) hexdump into binary.
-ps         output in postscript plain hexdump style.

$ echo -n '6d2424716c5f53405f504073735730726421' | xxd -r -p
m$$ql_S@_P@ssW0rd!
```

### Binary to Text
Example from HTB Mantis
```Perl
$ perl -lpe '$_=pack"B*",$_' < <( echo 010000000110010001101101001000010110111001011111010100000100000001110011011100110101011100110000011100100110010000100001 )

@dm!n_P@ssW0rd!
```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```