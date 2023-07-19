# ADExplorer Tips & Trics

## [1. Injecting Hash](https://www.trustedsec.com/blog/adexplorer-on-engagements/)

Inject the machine account hash into a new modified ADExplorer.exe process

```
sekurlsa::pth /user:<name of machine account>$ /domain:<domainname.com> /ntlm:<machine account NTLM hash> /run:"c:\Program Files\Tools\adexplorer.exe"
```

It is preferred to use LDAPS whenever you can by using 636 as the port instead of the default 389.

```
Connect to: <IP>:636
```
## [2. Create Snapshot](https://www.trustedsec.com/blog/adexplorer-on-engagements/)
![](https://www.trustedsec.com/wp-content/uploads/2021/04/Blog042721_13.png)

Path to Save the Snapshot

![Path to Save the Snapshot](https://www.trustedsec.com/wp-content/uploads/2021/04/Blog042721_14.png)

This could take a while if the Active Directory database is rather big. For a company with around 30,000 users, it is common for the dump to be over 800 MB in size. Once the dump is finished, I can open up the dump offline at any time using ADExplorer without the need to connect to the environment over the proxy. 

Instead of filling in connection details, I simply choose ‘Enter the path of a previous snapshot to load’ when starting ADExplorer.

![](https://www.trustedsec.com/wp-content/uploads/2021/04/Blog042721_15.png)

## [3. CN=Configuration](https://www.trustedsec.com/blog/adexplorer-on-engagements/)

Example: In this case, the **CN=10.100.10.0/24** subnet is linked to the site named Norway.

![SITES AND SERVICES](https://www.trustedsec.com/wp-content/uploads/2021/04/Blog042721_16.png)

![](https://www.trustedsec.com/wp-content/uploads/2021/04/Blog042721_17.png)

```

```

```

```
