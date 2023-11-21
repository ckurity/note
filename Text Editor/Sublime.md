# Sublime

- [Installation](#installation)
		
- [Common Usage](#common-usage)
	- [Multiple Selections](#multiple-selections)
	- [Remove Empty Lines](#remove-empty-lines)
	- [Nmap get SERVICE only](#nmap-get-service-only)

# [Installation](#installation-1)

## 
```sh
# Install the GPG key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

# Select the channel to use (Stable)
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Update apt sources and install Sublime Text
sudo apt update && sudo apt install sublime-text
```

# [Common Usage](#common-usage-1)

## [Multiple Selections](#multiple-selections-1)
```sh
Ctrl+Shift+L
```

## [Remove Empty Lines](#remove-empty-lines-1)
```sh
^[\s]*?[\n\r]+
```
> The regular expression `^[\s]*?[\n\r]+` matches any leading whitespace characters followed by one or more newline characters (either \n or \r). 

Let's break it down:

> ^ asserts the beginning of the line.
> 
> [\s]*? matches zero or more whitespace characters (including spaces, tabs, and line breaks), in a non-greedy manner (matching as few characters as possible).
> 
> [\n\r]+ matches one or more newline characters (\n or \r).

## [Nmap get SERVICE only](#nmap-get-service-only-1)
```sh
^\s*(\S+).*
```

Here's what the regular expression does:

> ^ asserts the start of the line.
> 
> \s* matches any leading whitespace (spaces or tabs).
> 
> (\S+) captures one or more non-whitespace characters (the first word) and stores it in a group.
> 
> .* matches the rest of the line (to be removed).

```

## 
```sh

```

## 
```sh

```




```
```

```
```


```

```
