- [View All](#view-all)

https://portswigger.net/web-security/cors/lab-basic-origin-reflection-attack

This website has an insecure CORS configuration in that it trusts all origins.

To solve the lab, craft some JavaScript that uses CORS to retrieve the administrator's API key and upload the code to your exploit server. The lab is solved when you successfully submit the administrator's API key.

You can log in to your own account using the following credentials: wiener:peter


# [View All](#view-all-1)
```sh
$ lynx -dump -listonly -nonumbers https://0000.web-security-academy.net/
https://exploit-1337.exploit-server.net/
https://portswigger.net/web-security/cors/lab-basic-origin-reflection-attack
https://0000.web-security-academy.net/
https://0000.web-security-academy.net/my-account
https://0000.web-security-academy.net/product?productId=1
https://0000.web-security-academy.net/product?productId=2
https://0000.web-security-academy.net/product?productId=3
https://0000.web-security-academy.net/product?productId=4
https://0000.web-security-academy.net/product?productId=5
https://0000.web-security-academy.net/product?productId=6
https://0000.web-security-academy.net/product?productId=7
https://0000.web-security-academy.net/product?productId=8
https://0000.web-security-academy.net/product?productId=9
https://0000.web-security-academy.net/product?productId=10
https://0000.web-security-academy.net/product?productId=11
https://0000.web-security-academy.net/product?productId=12
https://0000.web-security-academy.net/product?productId=13
https://0000.web-security-academy.net/product?productId=14
https://0000.web-security-academy.net/product?productId=15
https://0000.web-security-academy.net/product?productId=16
https://0000.web-security-academy.net/product?productId=17
https://0000.web-security-academy.net/product?productId=18
https://0000.web-security-academy.net/product?productId=19
https://0000.web-security-academy.net/product?productId=20
```