## Check Git configuration
```
git config -l
git config --list
```
## One-liner
```
git add . ; git status ; git commit -m newUpdate ; git pu│nothing to commit, working tree clean                         │nothing to commit, working tree clean
sh
```

## git config
```
-l, --list            list all
--get                 get value: name [value-pattern]
```

## 14400 seconds / 4 hours
```
$ git config -l | grep cred
credential.helper=cache --timeout=14400

$ git config --get credential.helper
cache --timeout=14400

$ git config -l | grep remote
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