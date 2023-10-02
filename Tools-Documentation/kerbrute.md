[Validate Users with `kerbrute userenum`](#kerbrute-userenum-userstxt--d-searchhtb---dc-ip)

[Another example](#another-example)

-----------------------------

### kerbrute userenum users.txt -d search.htb --dc $ip
```
$ kerbrute userenum users.txt -d search.htb --dc $ip

    __             __               __     
   / /_____  _____/ /_  _______  __/ /____ 
  / //_/ _ \/ ___/ __ \/ ___/ / / / __/ _ \
 / ,< /  __/ /  / /_/ / /  / /_/ / /_/  __/
/_/|_|\___/_/  /_.___/_/   \__,_/\__/\___/                                        

Version: v1.0.3 (9dad6e1) - 09/19/23 - Ronnie Flathers @ropnop

2023/09/19 04:55:58 >  Using KDC(s):
2023/09/19 04:55:58 >   10.10.11.129:88

2023/09/19 04:55:58 >  [+] VALID USERNAME:       Keely.Lyons@search.htb
2023/09/19 04:55:58 >  [+] VALID USERNAME:       Sierra.Frye@search.htb
2023/09/19 04:55:58 >  [+] VALID USERNAME:       Dax.Santiago@search.htb
2023/09/19 04:55:58 >  Done! Tested 24 usernames (3 valid) in 0.046 seconds
```

### Another example
```
$ kerbrute userenum users.txt --dc $ip -d htb.local

    __             __               __     
   / /_____  _____/ /_  _______  __/ /____ 
  / //_/ _ \/ ___/ __ \/ ___/ / / / __/ _ \
 / ,< /  __/ /  / /_/ / /  / /_/ / /_/  __/
/_/|_|\___/_/  /_.___/_/   \__,_/\__/\___/

Version: v1.0.3 (9dad6e1) - 09/11/23 - Ronnie Flathers @ropnop

2023/09/11 16:53:38 >  Using KDC(s):
2023/09/11 16:53:38 >   10.10.10.103:88

2023/09/11 16:53:38 >  [+] VALID USERNAME:       amanda@htb.local
2023/09/11 16:53:38 >  Done! Tested 12 usernames (1 valid) in 0.037 seconds
```