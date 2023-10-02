# Convert PPK to PEM file

- [Convert PPK to PEM file](#convert-ppk-to-pem-file)
    - [puttygen](#puttygen)
    - [openssl](#openssl)
    - [Windows PuTTYgen](#windows-puttygen)

-------------------------------------------

## puttygen
```sh
sudo apt install putty-tools
puttygen ppk_file.ppk -O private-openssh -o pem_file.pem
```

Replace `ppk_file.ppk` with the name of your PPK file and `pem_file.pem` with the desired name for the PEM file.

## openssl
```sh
openssl pkcs8 -inform DER -in ppk_file.ppk -outform PEM -out pem_file.pem 
```

Replace ppk_file.ppk with the name of your PPK file and pem_file.pem with the desired name for the PEM file.

## Windows PuTTYgen

1. Launch PuTTYgen application
1. Under File menu, click Load private key.
1. Select your .ppk file, and then choose Open.
1. Now, under the Conversions menu, click Export OpenSSH Key (force new file format).
1. Set a new name with the “.pem” extension and click the “Save” button

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

### 
```sh

```

# References

https://tecadmin.net/convert-ppk-to-pem-using-command/