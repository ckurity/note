[Enable Directory Listings](#enable-directory-listings)
[Disable Directory Listings](#disable-directory-listings)

# 

-------------------------------------------

## 
```sh
# grep -nA2 '/var/www/html/a' /etc/apache2/apache2.conf
176:<Directory /var/www/html/a>
177-    Options +Indexes
178-</Directory>
```

## [Enable Directory Listings](#enable-directory-listings-1)
```sh
Options +Indexes
```

## [Disable Directory Listings](#disable-directory-listings-1)
```sh
Options -Indexes
```

## Options Indexes
```sh
Options Indexes

Indexes: This option enables directory listings if there is no index file (e.g., index.html) in the directory. This means that Apache will generate a list of files and subdirectories when accessing this directory.


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

# References

