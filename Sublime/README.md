# Sublime
## Remove Empty Lines
```
^[\s]*?[\n\r]+
```
The regular expression `^[\s]*?[\n\r]+` matches any leading whitespace characters followed by one or more newline characters (either \n or \r). 

Let's break it down:

```
^ asserts the beginning of the line.

[\s]*? matches zero or more whitespace characters (including spaces, tabs, and line breaks), in a non-greedy manner (matching as few characters as possible).

[\n\r]+ matches one or more newline characters (\n or \r).
```