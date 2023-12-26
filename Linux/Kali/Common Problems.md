- [Problem](#problem)
- [How to fix it](#how-to-fix-it)
- [What’s happening?](#whats-happening)
- [References](#references)

-------------------------------------------

If you use zsh for your shell very occasionally you may find the following message appearing indicating a corrupt history file.

## [Problem](#problem-1)
```sh
zsh: corrupt history file /home/kali/.zsh_history
```

## [How to fix it](#how-to-fix-it)
```sh
cd ~
mv .zsh_history .zsh_history_bad
strings .zsh_history_bad > .zsh_history
fc -R .zsh_history
rm ~/.zsh_history_bad
```

## [What’s happening?](#whats-happening)
```sh
1. The zsh_history file gets corrupted somehow and the shell is unable to read it.
2. The corrupted file is moved to a new file zsh_history_bad.
3. The strings command is used to extract strings (or text) from the zsh_history_bad file and the output is written to a new file zsh_history.
4. The zsh builtin command fc is used to read the history from the fixed zsh_history file.
5. Finally the corrupted file zsh_history_file can be removed.
6. All done!
```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

https://shapeshed.com/zsh-corrupt-history-file/