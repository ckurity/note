## Googled and found these

[Remove a word from file names on Linux](https://superuser.com/questions/1514331/remove-a-word-from-file-names-on-linux)

[How can I remove certain string from file name? [duplicate]](https://unix.stackexchange.com/questions/361649/how-can-i-remove-certain-string-from-file-name)

[Remove first n character from bunch of file names with cut](https://stackoverflow.com/questions/28305134/remove-first-n-character-from-bunch-of-file-names-with-cut)

## Problem Statement
```
$ ls -1
'REMOVE THIS PARTLeave only this 1.txt'
'REMOVE THIS PARTLeave only this 2.txt'
'REMOVE THIS PARTLeave only this 3.txt'
```
## Working Solution
```
for i in *
do mv -v "$i" "${i/REMOVE THIS PART/}"
done
```
## Example
```
$ for i in *
> do mv -v "$i" "${i/REMOVE THIS PART/}"
> done
renamed 'REMOVE THIS PARTLeave only this 1.txt' -> 'Leave only this 1.txt'
renamed 'REMOVE THIS PARTLeave only this 2.txt' -> 'Leave only this 2.txt'
renamed 'REMOVE THIS PARTLeave only this 3.txt' -> 'Leave only this 3.txt'
$
```
## Final Output
```
$ ls -1
'Leave only this 1.txt'
'Leave only this 2.txt'
'Leave only this 3.txt'
$
```
