## Obtaining A Full Interactive Shell With ZSH

> After getting a connection on your reverse shell, we do not have a fully interactive shell yet. This is especially obvious if you try to sudo or something that requires a real terminal. We are confronted with the problem, that No TTY or askpass program is present. To solve that, we can upgrade our shell.

First, put your netcat session in the background with

```
ctrl + z
```

then
```
python3 -c 'import pty; pty.spawn("/bin/bash")'
```
or
```
script /dev/null -qc /bin/bash
```

For zsh users it is important to enter this in one line!
```
stty raw -echo; fg; ls; export SHELL=/bin/bash; export TERM=screen; stty rows 38 columns 116; reset;
```

## Additional Note
### Get the number of rows and columns:
```
stty -a | head -n1 | cut -d ';' -f 2-3 | cut -b2- | sed 's/; /\n/'
```

To ignore hotkeys in the local shell and return to your reverse shell, enter
```
stty raw -echo; fg
```

For zsh users it is important to enter this in one line!

Configure your rows and columns
```
stty rows ROWS cols COLS
```

And then
```
export TERM=xterm-256color
```
All you need to do now, is reload your shell:

```
exec /bin/bash
```

## Reference
https://book.hacktricks.xyz/generic-methodologies-and-resources/shells/full-ttys

https://blog.mrtnrdl.de/infosec/2019/05/23/obtain-a-full-interactive-shell-with-zsh.html