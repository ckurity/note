### RustScan Installation

https://github.com/RustScan/RustScan/wiki/Installation-Guide

Docker is the recommended way of installing RustScan. (however little bit slow and error to output with -oA)

```
git clone https://github.com/RustScan/RustScan.git
cd RustScan

# docker build -t <yourimagename> .
docker build -t rustscan .
```

### Problem with Docker version
```
$ rustscan -a localhost -- -Pn -A -oA nmap-A                     
.----. .-. .-. .----..---.  .----. .---.   .--.  .-. .-.
| {}  }| { } |{ {__ {_   _}{ {__  /  ___} / {} \ |  `| |
| .-. \| {_} |.-._} } | |  .-._} }\     }/  /\  \| |\  |
`-' `-'`-----'`----'  `-'  `----'  `---' `-'  `-'`-' `-'
The Modern Day Port Scanner.
________________________________________
: http://discord.skerritt.blog           :
: https://github.com/RustScan/RustScan :
 --------------------------------------
Please contribute more quotes to our GitHub https://github.com/rustscan/rustscan

[~] The config file is expected to be at "/home/rustscan/.rustscan.toml"
[~] File limit higher than batch size. Can increase speed by increasing batch size '-b 1048476'.
Open 127.0.0.1:33280
Open 127.0.0.1:50064
[~] Starting Script(s)
[>] Running script "nmap -vvv -p {{port}} {{ip}} -Pn -A -oA nmap-A" on ip 127.0.0.1
Depending on the complexity of the script, results may take some time to appear.
Failed to open normal output file nmap-A.nmap for writing
QUITTING!
[!] Error Exit code = 1
```

### RustScan Installation using cargo (little bit slow, same as docker)
```
cargo install rustscan
```

### 
```
...
  Installing /home/kali/.cargo/bin/rustscan
   Installed package `rustscan v2.1.1` (executable `rustscan`)
warning: be sure to add `/home/kali/.cargo/bin` to your PATH to be able to run the installed binaries
```

### Examples
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```
### TL;DR