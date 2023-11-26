# tmux

## Split the current window vertically
```sh
Ctrl + b  %
```

## Split the current window horizontally
```sh
Ctrl + b  "
```

## Resize the panes
```sh
Ctrl + b, Alt + [Up/Down/Right/Left] Arrow
```

## Create 3 horizontally split panes with equal sizes 
```sh
bind-key C-o setw synchronize-panes on \; split-window -h \; split-window -h \; select-layout even-horizontal
```

## ~/.tmux.conf
```sh
tmux source ~/.tmux.conf
```

# Create two new windows with a 3-pane layout each
```sh
bind-key C-o new-session -s 'htb' \; set -g mouse on \; \
    new-window -n 'GIT' \; split-window -h \; split-window -h \; select-layout even-horizontal \; \
        send-keys -t 0 'cd ~/xyz/l*' C-m \; send-keys -t 1 'cd ~/xyz/n*' C-m \; send-keys -t 2 'cd ~/xyz/t*' C-m \; \
        setw synchronize-panes on \; send-keys 'clear' C-m \; send-keys 'git pull' \; \
    new-window -n 'IP/VPN' \; split-window -h \; split-window -v \; \
        send-keys -t 0 'sudo ngrep' C-m \; \
        send-keys -t 1 'watch ip -br a' C-m \; \
        send-keys -t 2 'clear' C-m \; \
        send-keys -t 2 'pu' C-m \; \
        select-pane -t 0 \; \
    new-window -n 'Tools' \; \
        send-keys 'cd ~/xyz/n*/Tools-Binary' C-m \; \
    new-window -n 'Blackfield' \; \
        send-keys 'cd ~/xyz/labs/htb/Blackfield' C-m \; \
    select-window -t 'htb:IP/VPN'
```

## kill all session
```sh
tmux kill-session
```

## kill all session except the one specified by -t (target session)
```sh
tmux kill-session -a -t0
```

## 3 Split Windows for GIT
```sh
bind-key C-o split-window -h \; split-window -h \; select-layout even-horizontal \; send-keys -t 0 'cd ~/xyz/l*' C-m \; send-keys -t 1 'cd ~/xyz/n*' C-m \; send-keys -t 2 'cd ~/xyz/t*' C-m \; setw synchronize-panes on \; send-keys 'clear' C-m \; send-keys 'git pull'
```

## Split the current pane into 3 panes with equal size
```sh
bind-key C-p split-window -h \; split-window -v \; select-layout even-horizontal
```



## [A beginner's guide to tmux](https://www.redhat.com/sysadmin/introduction-tmux-linux)
```sh
Ctrl+B C — Create a new window.
```

## [Rename window in Tmux](https://debugpointer.com/linux/tmux-rename-window)
```sh
Ctrl-B + comma
```

## Examples
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

## ~/.tmux.conf
```sh
# 3 Windows utk GIT
bind-key C-o split-window -h \; split-window -h \; select-layout even-horizontal \; send-keys -t 0 'cd ~/xyz/labs/' C-m \; send-keys -t 1 'cd ~/xyz/note/' C-m \; send-keys -t 2 'cd ~/xyz/tcm/' C-m \; setw synchronize-panes on \
```

# Template

## TL;DR