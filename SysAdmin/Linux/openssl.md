# Template

### TL;DR
### To encrypt `plaintext.txt` file
PBKDF2 is a more secure method for deriving encryption keys from passwords.
```
openssl enc -aes-256-cbc -salt -pbkdf2 -in plaintext.txt -out encrypted.txt -pass pass:yourpassword
```


### ### To decrypt `encrypted.txt` file
```
openssl enc -d -aes-256-cbc -pbkdf2 -in encrypted.txt -out decrypted.txt -pass pass:yourpassword
```

### To encrypt `Hello World` string
```
echo -n "Hello World" | openssl enc -aes-256-cbc -salt -pbkdf2 -base64 -pass pass:yourpassword
```

### To decrypt encrypted `Hello World` string
```
echo U2FsdGVkX18SirF8kzgUfhn3nEVhRHT66MCes1qq70g= | openssl enc -d -aes-256-cbc -pbkdf2 -base64 -pass pass:yourpassword
```

### 
```
openssl enc -aes-256-cbc -salt -pbkdf2 -base64 -pass pass:yourpassword <<< 'hello world'
```

### 
```
openssl enc -d -aes-256-cbc -pbkdf2 -base64 -pass pass:yourpassword <<< 'U2FsdGVkX1/OkIDDtHBwsSCSSkmrgs0y8BdXJ2Vp+Gk='
```

### Examples
```

```

### 
```

```

### 
```
$ echo -n "Hello World" | openssl enc -aes-256-cbc -salt -pbkdf2 -base64 -pass pass:yourpassword
U2FsdGVkX18SirF8kzgUfhn3nEVhRHT66MCes1qq70g=
```

### 
```
$ echo U2FsdGVkX18SirF8kzgUfhn3nEVhRHT66MCes1qq70g= | openssl enc -d -aes-256-cbc -pbkdf2 -base64 -pass pass:yourpassword
Hello World
```

### 
```
$ openssl enc -aes-256-cbc -salt -pbkdf2 -base64 -pass pass:yourpassword <<< 'hello world'
U2FsdGVkX1/OkIDDtHBwsSCSSkmrgs0y8BdXJ2Vp+Gk=
```

### 
```
$ openssl enc -d -aes-256-cbc -pbkdf2 -base64 -pass pass:yourpassword <<< 'U2FsdGVkX1/OkIDDtHBwsSCSSkmrgs0y8BdXJ2Vp+Gk='
hello world
```