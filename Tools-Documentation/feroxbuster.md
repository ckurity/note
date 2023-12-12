- [Common Flags](#common-flags)
- [Wordlists](#wordlists)

-------------------------------------------

## [Common Flags](#common-flags-1)
```sh
-C, --filter-status <STATUS_CODE>...
          Filter out status codes (deny list) (ex: -C 200 -C 401)
```

## 
```sh
$ feroxbuster -u http://$t -C 404 -w /usr/share/dirb/wordlists/common.txt
by Ben "epi" Risher 🤓                 ver: 2.10.0
───────────────────────────┬──────────────────────
 🎯  Target Url            │ http://10.10.11.129
 🚀  Threads               │ 50
 📖  Wordlist              │ /usr/share/dirb/wordlists/common.txt
 💢  Status Code Filters   │ [404]
 💥  Timeout (secs)        │ 7
 🦡  User-Agent            │ feroxbuster/2.10.0
 💉  Config File           │ /etc/feroxbuster/ferox-config.toml
 🔎  Extract Links         │ true
 🏁  HTTP methods          │ [GET]
 🔃  Recursion Depth       │ 4
───────────────────────────┴──────────────────────
```

## [Wordlists](#wordlists)
Small to Big
```sh
feroxbuster -u http://$t -C 404 -w /usr/share/dirb/wordlists/common.txt
feroxbuster -u http://$t -C 404
feroxbuster -u http://$t -C 404 -w /usr/share/seclists/Discovery/Web-Content/big.txt
feroxbuster -u http://$t -C 404 -w /usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt

# 4614
/usr/share/dirb/wordlists/common.txt

# 20476
/usr/share/seclists/Discovery/Web-Content/big.txt

# 30000 Default
/usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt

# 220560
/usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt
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