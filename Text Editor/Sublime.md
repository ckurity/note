# Sublime
## Remove Empty Lines
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

### Nmap get SERVICE only
```
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

```
```

```
```


```

```
