## Unix-like/Linux Text Processing

>Chapter 20. Text Processing
>
>All Unix-like operating systems rely heavily on text files for several types of data storage. So it makes sense that there are many tools for manipulating text.

https://www.oreilly.com/library/view/the-linux-command/9781593273897/ch20.html

>16.4. Text Processing Commands
>
>Commands affecting text and text files

https://tldp.org/LDP/abs/html/textproc.html

>Text Processing

https://learnbyexample.gitbooks.io/linux-command-line/content/Text_Processing.html


### Copy the output of a command into the clipboard
```
$ echo {A..Z} | tr ' ' '\n' | xclip -selection clipboard
```
When do you need this?

