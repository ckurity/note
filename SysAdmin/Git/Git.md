# GitHub

## TLDR

- [GitHub](#github)
    - [TLDR](#tldr)
        - [Check Git Configuration](#check-git-configuration)
        - [One-liner Push](#one-liner-push)
        - [git config](#git-config)
        - [Initial Config](#initial-config)
        - [divergent branches](#divergent-branches)
    - [With EXAMPLES](#examples)
        - [Remember Username & Password](#remember-username--password)
            - [Default Config is Empty](#default-config-is-empty)
            - [14400 seconds / 4 hours](#14400-seconds--240-minutes--4-hours)
            - [Example](#example)
        - [Creating a personal access token](#creating-a-personal-access-token)
    - [Problems](#problems)
        - [divergent branches](#divergent-branches)

### Check Git Configuration
```sh
git config -l
git config --list
git config --get credential.helper
```

### One-liner Push
```sh
git add . ; git status ; git commit -m newUpdate ; git push
```

## git config
```sh
-l, --list            list all
--get                 get value: name [value-pattern]
```

### Initial Config
```sh
git config --global user.email 'ckurity'
git config --global user.name 'ckurity'
git add . ; git status ; git commit -m Update ; git push
```

[Creating a personal access token](#creating-a-personal-access-token)

-----------------------------------------

# EXAMPLES

## 14400 seconds / 4 hours
```sh
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
```sh
echo "# testnewrepo" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:ckurity/testnewrepo.git
git push -u origin main
```

## [Remember Username & Password](#remember-username--password-1)
```sh
$ git clone https://github.com/ckurity/git
Cloning into 'git'...
Username for 'https://github.com':
```

### Change it to 4 hours
### 14400 seconds = 240 minutes = 4 hours
Replace <seconds> with the desired number of seconds for the cache timeout. For example, to set it to 240 minutes (4 hours), you can use:
```sh
# git config --global credential.helper 'cache --timeout=<seconds>'
git config --global credential.helper 'cache --timeout=14400'
```

Once you've configured credential caching, Git will remember your username and password for the specified duration. During that time, you won't need to re-enter them when performing Git push operations.

### Example
14400 seconds = 4 hours
```sh
$ git config --global credential.helper 'cache --timeout=14400
```

```sh
$ git config --get credential.helper
cache --timeout=14400
```

### Default Config is Empty
```sh
git config --global credential.helper cache
```

### [Creating a personal access token](https://docs.github.com/en/enterprise-server@3.6/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)

1. In the upper-right corner of any page, click your profile photo, then click Settings.
2. In the left sidebar, click  Developer settings.
3. In the left sidebar, click Personal access tokens.
4. Click Generate new token.
5. In the "Note" field, give your token a descriptive name.
6. To give your token an expiration, select Expiration, then choose a default option or click Custom to enter a date.

## Problems

### divergent branches
This is latest config
```sh
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

If the remote repository has been incorrectly updated by others, and you have the correct copy on your local machine, you need to force push your changes to overwrite the remote branch. However, please be cautious when force pushing, as it rewrites the commit history, and it can cause issues for others collaborating on the same branch.

Here are the steps to force push:

### Fetch Changes (optional)
Before force pushing, you might want to fetch the latest changes from the remote repository to ensure you are aware of any updates.
```sh
git fetch origin master
```

### Force Push
Use the --force or -f option to push forcefully.
```sh
git push -f origin master
```

This will replace the remote branch with the local branch. However, be aware that this can cause problems for collaborators who have pulled the previous state of the branch. It's generally recommended to communicate with your team and make sure everyone is aware of the force push.

### Notify Collaborators:
Inform your collaborators about the force push so they can update their local repositories accordingly. They might need to reset their local branches to the new remote state.
```sh
git fetch --all
git reset --hard origin/master
```

This will forcefully reset their local branch to match the remote state.

Remember, force pushing should be done with caution and only when necessary. Always communicate with your team to avoid disrupting their work.
