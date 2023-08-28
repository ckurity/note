# tmux

#### Split the current window vertically
```
Ctrl + b  %
```
#### Split the current window horizontally
```
Ctrl + b  "
```
#### Resize the panes
```
Ctrl + b, Alt + [Up/Down/Right/Left] Arrow
```
#### Create 3 horizontally split panes with equal sizes 
```
bind-key C-o setw synchronize-panes on \; split-window -h \; split-window -h \; select-layout even-horizontal
```
#### 
```
bind-key C-o setw synchronize-panes on \; split-window -h \; split-window -h \; select-layout even-horizontal \; send-keys -t 0 'cd /path/to/folder1' C-m \; send-keys -t 1 'cd /path/to/folder2' C-m \; send-keys -t 2 'cd /path/to/folder3' C-m

```

### 
```

```

### 
```

```

### 
```

```

### Examples
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

# Template

### TL;DR