- [Installation](#installation)
- 
- [References](#references)

-------------------------------------------

## [Installation](#installation-1)
```sh
sudo apt install shellter
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt -y install wine32
```

```sh
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wine32:i386
```

Add the i386 architecture to your system, allowing you to install packages compiled for that architecture.

Used in Debian-based Linux distributions to enable support for the i386 architecture. 

This is often necessary when you want to install 32-bit libraries or packages on a 64-bit system.

This command only works on systems with x86 or amd64 architectures. It will not work on ARM-based systems like Macs with M1 or M2 chips.

## Potential issues:

Adding additional architectures can sometimes cause issues with package management or system stability. It is recommended to back up your system before running this command.

If you encounter any issues after adding the i386 architecture, you can remove it using the command sudo dpkg --remove-architecture i386.

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

https://github.com/ParrotSec/shellter

https://www.shellterproject.com/