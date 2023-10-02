- [Common Flags](#common-flags)
- [puttygen](#puttygen)
- [puttygen -h](#puttygen--h)
- [Example from HTB Ypuffy](#example-from-htb-ypuffy)

-------------------------------------------


### Common Flags
```sh
-o    specify output file

-O    specify output type:
           private             output PuTTY private key format
           private-openssh     export OpenSSH private key
           private-openssh-new export OpenSSH private key (force new format)
           private-sshcom      export ssh.com private key
           public              RFC 4716 / ssh.com public key
           public-openssh      OpenSSH public key
           fingerprint         output the key fingerprint
           cert-info           print certificate information
           text                output the key components as 'name=0x####'
```

### 
```sh

```

### puttygen
```sh
$ puttygen   
Usage: puttygen ( keyfile | -t type [ -b bits ] )
                [ -C comment ] [ -P ] [ -q ]
                [ -o output-keyfile ] [ -O type | -l | -L | -p ]
Use "puttygen --help" for more detail.
```

### puttygen -h
```sh
$ puttygen -h
PuTTYgen: key generator and converter for the PuTTY tools
Release 0.79
Usage: puttygen ( keyfile | -t type [ -b bits ] )
                [ -C comment ] [ -P ] [ -q ]
                [ -o output-keyfile ] [ -O type | -l | -L | -p ]
  -t    specify key type when generating:
           eddsa, ecdsa, rsa, dsa, rsa1   use with -b
           ed25519, ed448                 special cases of eddsa
  -b    specify number of bits when generating key
  -C    change or specify key comment
  -P    change key passphrase
  -q    quiet: do not display progress bar
  -O    specify output type:
           private             output PuTTY private key format
           private-openssh     export OpenSSH private key
           private-openssh-new export OpenSSH private key (force new format)
           private-sshcom      export ssh.com private key
           public              RFC 4716 / ssh.com public key
           public-openssh      OpenSSH public key
           fingerprint         output the key fingerprint
           cert-info           print certificate information
           text                output the key components as 'name=0x####'
  -o    specify output file
  -l    equivalent to `-O fingerprint'
  -L    equivalent to `-O public-openssh'
  -p    equivalent to `-O public'
  --cert-info   equivalent to `-O cert-info'
  --dump   equivalent to `-O text'
  -E fptype            specify fingerprint output type:
                          sha256, md5, sha256-cert, md5-cert
  --certificate file   incorporate a certificate into the key
  --remove-certificate remove any certificate from the key
  --reencrypt          load a key and save it with fresh encryption
  --old-passphrase file
        specify file containing old key passphrase
  --new-passphrase file
        specify file containing new key passphrase
  --random-device device
        specify device to read entropy from (e.g. /dev/urandom)
  --primes <type>      select prime-generation method:
        probable       conventional probabilistic prime finding
        proven         numbers that have been proven to be prime
        proven-even    also try harder for an even distribution
  --strong-rsa         use "strong" primes as RSA key factors
  --ppk-param <key>=<value>[,<key>=<value>,...]
        specify parameters when writing PuTTY private key file format:
            version       PPK format version (min 2, max 3, default 3)
            kdf           key derivation function (argon2id, argon2i, argon2d)
            memory        Kbyte of memory to use in passphrase hash
                             (default 8192)
            time          approx milliseconds to hash for (default 100)
            passes        number of hash passes to run (alternative to 'time')
            parallelism   number of parallelisable threads in the hash function
                             (default 1)
```

### Example from HTB Ypuffy
```sh
$ puttygen my_private_key.ppk -O private-openssh -o alice.pem

$ ls -lh
total 8.0K
-rw------- 1 kali kali 1.7K Oct  1 02:06 alice.pem
-rw------- 1 kali kali 1.5K Oct  1 02:03 my_private_key.ppk

$ file *                 
alice.pem:          PEM RSA private key
my_private_key.ppk: PuTTY Private Key File, version 2, algorithm ssh-rsa, Encryption none "rsa-key-20180716"
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