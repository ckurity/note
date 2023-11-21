# feroxbuster

- [feroxbuster](#feroxbuster)
    - [Common Flags](#common-flags)

-------------------------------------------

### Common Flags
```sh
-C, --filter-status <STATUS_CODE>...
          Filter out status codes (deny list) (ex: -C 200 -C 401)
```

### 
```sh
$ feroxbuster -u http://$t -C 404-w /usr/share/dirb/wordlists/common.txt
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

### 
```

```

### 
```

```

### 
```

```