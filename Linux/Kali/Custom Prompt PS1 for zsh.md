- [Default; 2 lines](#default-2-lines)
    - [Simplify Version](#simplify-version)
    - [Custom Name](#custom-name)
    - [Custom Time](#custom-time)
    - [Custom Time & Color - %n㉿%m](#custom-time--color---n㉿m)
    - [Custom Time & Color - CKURITY㉿BOX](#custom-time--color---ckurity㉿box)
    - [Custom: Day, Date & Time](#custom-day-date--time)
    - [Custom: Day & Date](#custom-day--date)
    - [Breakdown](#breakdown)
- [1 Line](#1-line)
    
- [Custom Prompt](#custom-prompt)
    - [Simple](#simple)
    - [24-hour WITH Seconds](#24-hour-with-seconds)

- [Tab Name](#set-the-tab-name-in-a-qt-terminal-emulator)
- [References](#references)


# TLDR
```sh
%n㉿%m	username㉿hostname

%n		This displays the username of the current user
@/㉿	This is just a literal "@" / "㉿" symbol
%m		This displays the hostname of the system
%*      Inserts the current time in 12-hour format

%D{%a %d-%b-%Y %H:%M:%S}    Inserts the current day, date and time in the format "dd-mm-yyyy HH:MM:SS," where:

%D{}: format specifier for date and time formatting
%A: This format specifier displays the full name of the day of the week. For example, if you use %A, it will display "Monday" for a date that falls on a Monday.
%a: This format specifier displays the abbreviated name of the day of the week. It typically uses the first three letters of the day of the week. For example, if you use %a, it will display "Mon" for a date that falls on a Monday.
%d: Day of the month (01-31)
%m: Month (01-12)
%b: Abbreviated month name (e.g., Oct for October)
%Y: Year with century as a decimal number (e.g., 2023)
%H: Hour (00-23)
%M: Minute (00-59)
%S: Second (00-59)

%F{reset}   This resets the text color to the default.
%B%F{%(#.blue.green)}%~%b   This part displays the current working directory in blue (if the previous command was successful) or green (if it was unsuccessful), with the text in bold.
```

### Default; 2 Lines
```sh
┌──(kali㉿kali)-[~]
└─$ echo $PS1
%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset}

PS1='%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
```

#### Simplify Version
```sh
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

┌──(kali㉿kali)-[~]
└─$
```

#### Custom Name
```sh
tajukPrompt='CKURITY㉿BOX'
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}$tajukPrompt%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

┌──(CKURITY㉿BOX)-[~]
└─$
```

#### Custom Time
[%*] 
```sh
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%* ~ CKURITY㉿BOX%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

┌──(20:48:04 ~ CKURITY㉿BOX)-[~]
└─$
```

#### Custom Time & Color - %n㉿%m
```sh
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%*%f%F{%(#.red.blue)} ♨ %n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

┌──(20:48:16 ♨ kali㉿kali)-[~]
└─$
```

#### Custom Time & Color - CKURITY㉿BOX
```sh
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{yellow}%*%f%F{%(#.red.blue)}) ~ CKURITY㉿BOX%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '

┌──(20:48:45) ~ CKURITY㉿BOX)-[~]
└─$ 
```

#### Custom: Date & Time
```sh
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%D{%d-%b-%Y %H:%M:%S}%f%F{%(#.red.blue)} ♨ CKURITY㉿BOX%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
```

#### Custom: Day, Date & Time
%D{%a %d-%b-%Y %H:%M:%S}
```sh
tajukPrompt='CKURITY㉿BOX'
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%D{%a %d-%b-%Y %H:%M:%S}%f%F{%(#.red.blue)} ♨ $tajukPrompt%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
```

#### [Custom: Day & Date]()
Path always set to ~
```sh
PS1='%F{%(#.blue.green)}┌──(%B%F{%(#.red.blue)}%F{green}%D{%a %d-%b-%Y}%f%F{%(#.red.blue)} ♨ CKURITY㉿BOX%b%F{%(#.blue.green)})-[~]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
```

#### [Breakdown](#breakdown-1)
```sh
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
```

### 1 Line
> Ctrl + P
```sh
kali@kali:~$ echo $PS1
${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}%B%F{%(#.red.blue)}%n@%m%b%F{reset}:%B%F{%(#.blue.green)}%~%b%F{reset}%(#.#.$)
```

### PS1='%B%F{blue}%n@%m%b:%F{green}%~$ '
```sh
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

# Custom Prompt
## Simple
### `PS1='%B%F{blue}ckurity@box%b:%F{green}%~$ '`
PS1='%B%F{blue}ckurity@box%b:%F{green}%~$ '
```sh
kali@kali:~$ PS1='%B%F{blue}ckurity@box%b:%F{green}%~$ '
ckurity@box:~$
```

#### 24-hour WITH Seconds
NAME=ckurity@box
PS1='[%*] %B%F{blue}$NAME%b:%F{green}%~$ '
```sh
$ NAME=ckurity@box
$ PS1='[%*] %B%F{blue}$NAME%b:%F{green}%~$ '
[10:35:15] ckurity@box:~$
```

# Set the tab name in a Qt terminal emulator
Use the precmd hook provided by Zsh to dynamically change the tab name

## 
```zsh
tajukTab='♨TEST♨'

# Define a function to update the tab title
update_tab_title() {
    # Set the tab title to "username@hostname:current_directory"
    # printf "\033]0;%s@%s:%s\007" "$USER" "$HOST" "$PWD"
	printf "\033]0;$tajukTab\007"
}

# Set the precmd hook to call our function before each command
precmd_functions+=(update_tab_title)
```

## 
```sh
The line \033]0;%s@%s:%s\007 in the update_tab_title function uses ANSI escape codes to set the title of the terminal tab to a specific format. Let's break down this line:

\033: This is the escape character, which is represented as ^[ in the form of octal notation. In ASCII, it signals the beginning of an escape code.

]0;: This part of the escape code tells the terminal emulator that we are setting the window or tab title.

%s@%s:%s: These are format placeholders that will be replaced by actual values when the code is executed.

%s is a placeholder for a string, and we're using it three times here.

%s@%s:%s represents a format string where %s will be replaced by the values we provide in the printf function.

\007: This is the ASCII Bell character (BEL), represented as \a in C-style escape sequences. It signals the end of the escape code and notifies the terminal emulator to apply the title change.

When this line of code is executed within the update_tab_title function, the placeholders %s are replaced with the following values:

The first %s is replaced with the value of $USER, which is your username.
The second %s is replaced with the value of $HOST, which is your hostname.
The third %s is replaced with the value of $PWD, which is the current working directory.
```

# References

**How to Change / Set up bash custom prompt (PS1) in Linux**

https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html

https://zsh-prompt-generator.site/