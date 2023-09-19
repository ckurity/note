# Custom Prompt PS1

### [How to Change / Set up bash custom prompt (PS1) in Linux](https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html)
```

```
[Example `ckurity@box:~$`](#example-ps1bfblueckurityboxbfgreen)

### Default; 2 layers
```
┌──(kali㉿kali)-[~]
└─$ echo $PS1
%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset}
```

### 
```
kali@kali:~$ echo $PS1
${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}%B%F{%(#.red.blue)}%n@%m%b%F{reset}:%B%F{%(#.blue.green)}%~%b%F{reset}%(#.#.$)
```

Here's a breakdown of each part:

1.	${debian_chroot:+($debian_chroot)}: This part is used to display the Debian chroot environment if it's set.

2.	${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}: This part displays the name of the active Python virtual environment (if one is activated).

3.	%B: This sets the text to bold.

4.	%F{%(#.red.blue)}: This sets the text color. It uses conditional coloring where the text is red if the previous command was unsuccessful (exit status not zero), and blue if it was successful (exit status zero).

5.	%n: This displays the username of the current user.
6.	@: This is just a literal "@" symbol.
7.	%m: This displays the hostname of the system.
8.	%b: This resets any formatting options (e.g., bold) to their default values.
9.	%F{reset}: This resets the text color to the default.
10.	:%B%F{%(#.blue.green)}%~%b: This part displays the current working directory in blue (if the previous command was successful) or green (if it was unsuccessful), with the text in bold.
11.	%(#.#.$): This displays "#" if you are the root user, "." if you are not the root user but are using the sudo command, and "$" if you are a regular user.
So, your prompt will show something like this:
•	If you are the root user: root@hostname:/current/directory#
•	If you are a regular user: user@hostname:/current/directory$
•	If you are using sudo as a regular user: user@hostname:/current/directory$

The color of the text will change based on whether the previous command was successful (red for failure, blue or green for success), and the text might be bold in some parts. The active Python virtual environment (if any) will also be displayed.

### PS1='%B%F{blue}%n@%m%b:%F{green}%~$ '
```
Here's what each part does:

%B: Sets the text to bold.
%F{blue}: Sets the text color to blue.
%n: Displays the username of the current user.
@: Displays the "@" symbol.
%m: Displays the hostname of the system.
%b: Resets any formatting options (e.g., bold) to their default values.
:: Adds a colon.
%F{green}: Sets the text color to green.
%~: Displays the current working directory.
$: Displays the "$" symbol, which is a common indicator for regular users in the shell prompt.

This prompt will be simple and clear for regular users without any root or sudo indicators.
```

### Example `PS1='%B%F{blue}ckurity@box%b:%F{green}%~$ '`
PS1='%B%F{blue}ckurity@box%b:%F{green}%~$ '
```
kali@kali:~$ PS1='%B%F{blue}ckurity@box%b:%F{green}%~$ '
ckurity@box:~$
```

### 
```

```

### 
```

```