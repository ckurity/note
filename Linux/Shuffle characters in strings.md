[Shuffle characters in strings from several rows](https://stackoverflow.com/questions/49596362/bash-shuffle-characters-in-strings-from-several-rows/)

```sh
$ echo "Hello" | fold -w1 | shuf | tr -d '\n' ; echo 
oHlle

$ echo "Hello" | fold -w1 | shuf | tr -d '\n' ; echo 
loHel
```