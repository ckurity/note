[TLDR](#tldr)
[hashcat --hash-info --mach | grep NTLMv2](#hashcat---hash-info---mach--grep-ntlmv2)
[hashcat --example-hashes --mach | grep NTLMv2](#hashcat---example-hashes---mach--grep-ntlmv2)
[hashcat -m 18200 hash.txt rockyou.txt](#hashcat--m-18200-hashtxt-rockyoutxt)

## [TLDR](#tldr-1)
"--example-hashes" is Alias of "--hash-info"
```sh
hashcat --hash-info --mach | grep NTLMv2
hashcat --example-hashes --mach | grep NTLMv2
hashcat --hash-info --mach | grep krb5asrep
```

## [hashcat --hash-info --mach | grep NTLMv2](#hashcat---hash-info---mach--grep-ntlmv2-1)
```sh
$ hashcat --hash-info --mach | grep NTLMv2
 }, "5600": { "name": "NetNTLMv2", "category": "Network Protocol", "slow_hash": false, "password_len_min": 0, "password_len_max": 256, "is_salted": true, "salt_type": "embedded", "salt_len_min": 0, "salt_len_max": 256, "kernel_type": [ "pure", "optimized" ], "example_hash_format": "plain", "example_hash": "0UL5G37JOI0SX::6VB1IS0KA74:ebe1afa18b7fbfa6:aab8bf8675658dd2a939458a1077ba08:010100000000000031c8aa092510945398b9f7b7dde1a9fb00000000f7876f2b04b700", "example_pass": "hashcat", "benchmark_mask": "?b?b?b?b?b?b?b", "benchmark_charset1": "N/A", "autodetect_enabled": true, "self_test_enabled": true, "potfile_enabled": true, "custom_plugin": false, "plaintext_encoding": [ "ASCII", "HEX" ]
 }, "27100": { "name": "NetNTLMv2 (NT)", "category": "Network Protocol", "slow_hash": true, "password_len_min": 32, "password_len_max": 32, "is_salted": true, "salt_type": "embedded", "salt_len_min": 0, "salt_len_max": 256, "kernel_type": [ "pure" ], "example_hash_format": "plain", "example_hash": "0UL5G37JOI0SX::6VB1IS0KA74:ebe1afa18b7fbfa6:aab8bf8675658dd2a939458a1077ba08:010100000000000031c8aa092510945398b9f7b7dde1a9fb00000000f7876f2b04b700", "example_pass": "b4b9b02e6f09a9bd760f388b67351e2b", "benchmark_mask": "?a?a?a?a?a?a?a?axxxxxxxxxxxxxxxx", "benchmark_charset1": "N/A", "autodetect_enabled": false, "self_test_enabled": true, "potfile_enabled": true, "custom_plugin": false, "plaintext_encoding": [ "ASCII", "HEX" ]
```

## [hashcat --example-hashes --mach | grep NTLMv2](#hashcat---example-hashes---mach--grep-ntlmv2-1)
```sh
$ hashcat --example-hashes --mach | grep NTLMv2
 }, "5600": { "name": "NetNTLMv2", "category": "Network Protocol", "slow_hash": false, "password_len_min": 0, "password_len_max": 256, "is_salted": true, "salt_type": "embedded", "salt_len_min": 0, "salt_len_max": 256, "kernel_type": [ "pure", "optimized" ], "example_hash_format": "plain", "example_hash": "0UL5G37JOI0SX::6VB1IS0KA74:ebe1afa18b7fbfa6:aab8bf8675658dd2a939458a1077ba08:010100000000000031c8aa092510945398b9f7b7dde1a9fb00000000f7876f2b04b700", "example_pass": "hashcat", "benchmark_mask": "?b?b?b?b?b?b?b", "benchmark_charset1": "N/A", "autodetect_enabled": true, "self_test_enabled": true, "potfile_enabled": true, "custom_plugin": false, "plaintext_encoding": [ "ASCII", "HEX" ]
 }, "27100": { "name": "NetNTLMv2 (NT)", "category": "Network Protocol", "slow_hash": true, "password_len_min": 32, "password_len_max": 32, "is_salted": true, "salt_type": "embedded", "salt_len_min": 0, "salt_len_max": 256, "kernel_type": [ "pure" ], "example_hash_format": "plain", "example_hash": "0UL5G37JOI0SX::6VB1IS0KA74:ebe1afa18b7fbfa6:aab8bf8675658dd2a939458a1077ba08:010100000000000031c8aa092510945398b9f7b7dde1a9fb00000000f7876f2b04b700", "example_pass": "b4b9b02e6f09a9bd760f388b67351e2b", "benchmark_mask": "?a?a?a?a?a?a?a?axxxxxxxxxxxxxxxx", "benchmark_charset1": "N/A", "autodetect_enabled": false, "self_test_enabled": true, "potfile_enabled": true, "custom_plugin": false, "plaintext_encoding": [ "ASCII", "HEX" ]
```

## 
```sh

```

## 
```sh

```

## 
```sh
$ hashcat --example-hashes | grep krb5asrep
  Example.Hash........: $krb5asrep$23$user@domain.com:3e156ada591263b8a...102ac [Truncated, use --mach for full length]
```

## 
```sh
$ hashcat --example-hashes --mach | grep krb5asrep
 }, "18200": { "name": "Kerberos 5, etype 23, AS-REP", "category": "Network Protocol", "slow_hash": false, "password_len_min": 0, "password_len_max": 256, "is_salted": true, "salt_type": "embedded", "salt_len_min": 0, "salt_len_max": 256, "kernel_type": [ "pure", "optimized" ], "example_hash_format": "plain", "example_hash": "$krb5asrep$23$user@domain.com:3e156ada591263b8aab0965f5aebd837$007497cb51b6c8116d6407a782ea0e1c5402b17db7afa6b05a6d30ed164a9933c754d720e279c6c573679bd27128fe77e5fea1f72334c1193c8ff0b370fadc6368bf2d49bbfdba4c5dccab95e8c8ebfdc75f438a0797dbfb2f8a1a5f4c423f9bfc1fea483342a11bd56a216f4d5158ccc4b224b52894fadfba3957dfe4b6b8f5f9f9fe422811a314768673e0c924340b8ccb84775ce9defaa3baa0910b676ad0036d13032b0dd94e3b13903cc738a7b6d00b0b3c210d1f972a6c7cae9bd3c959acf7565be528fc179118f28c679f6deeee1456f0781eb8154e18e49cb27b64bf74cd7112a0ebae2102ac", "example_pass": "hashcat", "benchmark_mask": "?b?b?b?b?b?b?b", "benchmark_charset1": "N/A", "autodetect_enabled": true, "self_test_enabled": true, "potfile_enabled": true, "custom_plugin": false, "plaintext_encoding": [ "ASCII", "HEX" ]
```

## [hashcat -m 18200 hash.txt rockyou.txt](#hashcat--m-18200-hashtxt-rockyoutxt-1)
```sh
$ hashcat -m 18200 hash.txt /usr/share/wordlists/rockyou.txt
hashcat (v6.2.6) starting

... snip ...

Dictionary cache hit:
* Filename..: /usr/share/wordlists/rockyou.txt
* Passwords.: 14344385
* Bytes.....: 139921507
* Keyspace..: 14344385

... snip ...

$krb5asrep$23$FSmith@EGOTISTICAL-BANK.LOCAL:c1a1f5dea2a19056999e31e718706ff6$0a35761825be112e7dac4f1f567a75312a5561f9f0174ce441e2175e96683f239a26d4014f2bdeb3387f844299b2cae6d048280cb30e615462d9277ad1ccde9760251e313e8e6323895e5f6507cd24e5e81e18c1ecfab0baa50bb55a6459a1601cd478a49efbb8b882d639bfa1443d1e8b5c1fa4fb43ccb1d45e6e25322153b0baf498ce97b337afdc34e07313d8901ea3f21333919ac44f2f4e33c208413187281a3582588f602c42600d2c66e54f5ee1daf6ec395c472f3afb708e92a4169e2ba04e6b69ca3e44f95016774cddefcbdc1cdc4b49d81e568d7d4fc913cd6a4d842ee08626bd69bb114e394746d74fbbc225934187d42e80742889efc04953a3:Thestrokes23
                                                          
Session..........: hashcat
Status...........: Cracked
Hash.Mode........: 18200 (Kerberos 5, etype 23, AS-REP)
Hash.Target......: $krb5asrep$23$FSmith@EGOTISTICAL-BANK.LOCAL:c1a1f5d...4953a3
Time.Started.....: Tue Aug 15 15:23:30 2023 (11 secs)
Time.Estimated...: Tue Aug 15 15:23:41 2023 (0 secs)
Kernel.Feature...: Pure Kernel
Guess.Base.......: File (/usr/share/wordlists/rockyou.txt)
Guess.Queue......: 1/1 (100.00%)
Speed.#1.........:   869.0 kH/s (0.48ms) @ Accel:256 Loops:1 Thr:1 Vec:8
Recovered........: 1/1 (100.00%) Digests (total), 1/1 (100.00%) Digests (new)
Progress.........: 10539008/14344385 (73.47%)
Rejected.........: 0/10539008 (0.00%)
Restore.Point....: 10538496/14344385 (73.47%)
Restore.Sub.#1...: Salt:0 Amplifier:0-1 Iteration:0-1
Candidate.Engine.: Device Generator
Candidates.#1....: Thip1812 -> Thelittlemermaid
Hardware.Mon.#1..: Util: 87%

Started: Tue Aug 15 15:23:29 2023
Stopped: Tue Aug 15 15:23:43 2023
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
