- [On-Disk Evasion](#on-disk-evasion)
- [In-Memory Evasion](#in-memory-evasion)
- [References](#references)

-------------------------------------------

https://gitbook.brainyou.stream/exploitation/av-evasion

# [On-Disk Evasion](#on-disk-evasion)
Common techniques:
- Packers
- Obfuscators > Insert irrelevant instructions
- Crypters > Encrypted payload, and decrypt in memory upon execution using stub
- Software protectors > Anti-reversing + Anti-debugging + VM emulation detection ...

# [In-Memory Evasion](#in-memory-evasion-1)
Remote Process Memory Injection > Inject payload into another valid PE. Could leverage a set of Windows APIs (OpenProcess function to obtain a valid HANDLE, then allocate memory in the context of that process by calling a Win API such as VirtualAllocEx. Once allocated in the remote process, copy the payload to the newly allocated memory using WriteProcessMemory. Finally the payload is executed in memory in a separate thread using the CreateRemoteThread API.

Reflective DLL Injection > Load a DLL stored by the attacker in the process memory. The traditional approach will use LoadLibrary API, but it doesn't support loading a DLL from memory, neither do any other Windows API. Therefore, the technique requires the attacker to develop he's own version of the API which does not rely on a disk based DLL.

Process Hollowing > First launch a non-malicious process in a suspended state, and then remove the image of the process from memory and replace with a malicious executable image. Finally resume the process and malicious code is executed. This bypasses antivirus.

Inline Hooking > Modify memory and introduce a hook (instructions that redirect the code execution) into a function to point the execution flow to our malicious code. Upon executing the code, the flow will return back to the modified function and resume execution, appearing as if only the original code had executed.
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

https://matro7sh.github.io/BypassAV/
https://github.com/matro7sh/BypassAV/blob/main/Bypass-AV.md

https://github.com/phra/PEzor

https://iwantmore.pizza/posts/PEzor.html