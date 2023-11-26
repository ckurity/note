[Shuffle characters in strings from several rows](https://stackoverflow.com/questions/49596362/bash-shuffle-characters-in-strings-from-several-rows/)

```sh
$ echo "Hello" | fold -w1 | shuf | tr -d '\n' ; echo
oHlle

$ echo "Hello" | fold -w1 | shuf | tr -d '\n' ; echo
loHel
```

1. fold -w1: This folds the string to have one character per line.

2. shuf: This shuffles the lines.

3. tr -d '\n': This removes the newline characters, joining the shuffled characters into a single line.