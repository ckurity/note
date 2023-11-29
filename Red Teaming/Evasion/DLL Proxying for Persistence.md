- 
- [References](#references)

-------------------------------------------

## [Compile C++ Code]
https://raw.githubusercontent.com/gemini-security/Bypass-Windows-Defender-with-CPP-.DLL-Payload-File---Meterpreter-Reverse-Shell/main/template.cpp
```sh
x86_64-w64-mingw32-gcc -shared -o helloworld.dll template.cpp
x86_64-w64-mingw32-gcc -fpermissive -shared -o helloworld.dll template.cpp
```

## 
```sh
$ x86_64-w64-mingw32-gcc -shared -o helloworld.dll template.cpp 
template.cpp: In function ‘BOOL DllRegisterServer()’:
template.cpp:68:52: error: invalid conversion from ‘unsigned char*’ to ‘char*’ [-fpermissive]
   68 |         DecryptAES((char*)payload, payload_length, AESkey, sizeof(AESkey));
      |                                                    ^~~~~~
      |                                                    |
      |                                                    unsigned char*
template.cpp:7:60: note:   initializing argument 3 of ‘void DecryptAES(char*, DWORD, char*, DWORD)’
    7 | void DecryptAES(char* shellcode, DWORD shellcodeLen, char* key, DWORD keyLen) {
      |                                                      ~~~~~~^~~
$ l
total 4.0K
-rw-r--r-- 1 kali kali 2.6K Nov 29 13:30 template.cpp
```

## 
```sh
$ x86_64-w64-mingw32-gcc -fpermissive -shared -o helloworld.dll template.cpp
template.cpp: In function ‘BOOL DllRegisterServer()’:
template.cpp:68:52: warning: invalid conversion from ‘unsigned char*’ to ‘char*’ [-fpermissive]
   68 |         DecryptAES((char*)payload, payload_length, AESkey, sizeof(AESkey));
      |                                                    ^~~~~~
      |                                                    |
      |                                                    unsigned char*
template.cpp:7:60: note:   initializing argument 3 of ‘void DecryptAES(char*, DWORD, char*, DWORD)’
    7 | void DecryptAES(char* shellcode, DWORD shellcodeLen, char* key, DWORD keyLen) {
      |                                                      ~~~~~~^~~

$ l
total 224K
-rwxr-xr-x 1 kali kali 219K Nov 29 13:36 helloworld.dll
-rw-r--r-- 1 kali kali 2.6K Nov 29 13:30 template.cpp
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

```

## 
```sh

```

# [References](#references-1)

https://www.ired.team/offensive-security/persistence/dll-proxying-for-persistence

https://medium.com/@lsecqt/weaponizing-dll-hijacking-via-dll-proxying-3983a8249de0