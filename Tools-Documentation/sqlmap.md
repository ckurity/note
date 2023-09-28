# sqlmap

-------------------------------------------

### 
```sh
$ ls /usr/share/sqlmap/tamper/ 
0eunion.py                   concat2concatws.py            __init__.py                  randomcase.py         space2randomblank.py
apostrophemask.py            decentities.py                least.py                     randomcomments.py     sp_password.py
apostrophenullencode.py      dunion.py                     lowercase.py                 schemasplit.py        substring2leftright.py
appendnullbyte.py            equaltolike.py                luanginx.py                  scientific.py         symboliclogical.py
base64encode.py              equaltorlike.py               misunion.py                  sleep2getlock.py      unionalltounion.py
between.py                   escapequotes.py               modsecurityversioned.py      space2comment.py      unmagicquotes.py
binary.py                    greatest.py                   modsecurityzeroversioned.py  space2dash.py         uppercase.py
bluecoat.py                  halfversionedmorekeywords.py  multiplespaces.py            space2hash.py         varnish.py
chardoubleencode.py          hex2char.py                   ord2ascii.py                 space2morecomment.py  versionedkeywords.py
charencode.py                hexentities.py                overlongutf8more.py          space2morehash.py     versionedmorekeywords.py
charunicodeencode.py         htmlencode.py                 overlongutf8.py              space2mssqlblank.py   xforwardedfor.py
charunicodeescape.py         if2case.py                    percentage.py                space2mssqlhash.py
commalesslimit.py            ifnull2casewhenisnull.py      plus2concat.py               space2mysqlblank.py
commalessmid.py              ifnull2ifisnull.py            plus2fnconcat.py             space2mysqldash.py
commentbeforeparentheses.py  informationschemacomment.py   __pycache__                  space2plus.py
```

### 
```sh
$ ll /usr/share/sqlmap/tamper/char*
-rw-r--r-- 1 root root 1218 Aug  1 05:33 /usr/share/sqlmap/tamper/chardoubleencode.py
-rw-r--r-- 1 root root 1388 Aug  1 05:33 /usr/share/sqlmap/tamper/charencode.py
-rw-r--r-- 1 root root 1646 Aug  1 05:33 /usr/share/sqlmap/tamper/charunicodeencode.py
-rw-r--r-- 1 root root 1215 Aug  1 05:33 /usr/share/sqlmap/tamper/charunicodeescape.py
```

### 
```sh
-h, --help            Show basic help message and exit
-hh                   Show advanced help message and exit
-u URL, --url=URL   Target URL (e.g. "http://www.site.com/vuln.php?id=1")

--data=DATA         Data string to be sent through POST (e.g. "id=1")
--cookie=COOKIE     HTTP Cookie header value (e.g. "PHPSESSID=a8d127e..")
--random-agent      Use randomly selected HTTP User-Agent header value
--proxy=PROXY       Use a proxy to connect to the target URL

--level=LEVEL       Level of tests to perform (1-5, default 1)
--risk=RISK         Risk of tests to perform (1-3, default 1)

--delay=DELAY       Delay in seconds between each HTTP request
```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```