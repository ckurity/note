## Check Git configuration
```
git config -l
git config --list
git config --get credential.helper
```
## One-liner
```
git add . ; git status ; git commit -m newUpdate ; git push
```

## git config
```
-l, --list            list all
--get                 get value: name [value-pattern]
```

### Initial Config
```
git config --global user.email 'ckurity'
git config --global user.name 'ckurity'
git add . ; git status ; git commit -m newUpdate ; git push
```

## 14400 seconds / 4 hours
```
$ git config -l | grep cred
credential.helper=cache --timeout=14400

$ git config --get credential.helper
cache --timeout=14400

$ git config -l | remote
remote.origin.url=https://github.com/ckurity/git
remote.origin.fetch=+refs/heads/*:refs/remotes/origin/*
branch.master.remote=origin

$ git config --get remote.origin.url 
https://github.com/ckurity/git
```
## Create a new repository on the command line
```
echo "# testnewrepo" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:ckurity/testnewrepo.git
git push -u origin main
```
## Remember Username & Password
```
$ git clone https://github.com/ckurity/git
Cloning into 'git'...
Username for 'https://github.com':
```
```
git config --global credential.helper cache
```
```
git config --global credential.helper 'cache --timeout=<seconds>'
```

### 14400 seconds = 240 minutes = 4 hours
```
git config --global credential.helper 'cache --timeout=14400'
```
Replace <seconds> with the desired number of seconds for the cache timeout. For example, to set it to 30 minutes, you can use:
```
git config --global credential.helper 'cache --timeout=1800'
```
Once you've configured credential caching, Git will remember your username and password for the specified duration. During that time, you won't need to re-enter them when performing Git push operations.

# Example
14400 seconds = 4 hours
```
$ git config --global credential.helper 'cache --timeout=14400
```
```
$ git config --get credential.helper
cache --timeout=14400
```

```
$ git pull                                             
hint: You have divergent branches and need to specify how to reconcile them.
hint: You can do so by running one of the following commands sometime before                                                         
hint: your next pull:                                                                                                                
hint: 
hint:   git config pull.rebase false  # merge
hint:   git config pull.rebase true   # rebase
hint:   git config pull.ff only       # fast-forward only
hint: 
hint: You can replace "git config" with "git config --global" to set a default
hint: preference for all repositories. You can also pass --rebase, --no-rebase,
hint: or --ff-only on the command line to override the configured default per
hint: invocation.
fatal: Need to specify how to reconcile divergent branches.
```