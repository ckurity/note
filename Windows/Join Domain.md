## Before Join Domain
```
C:\PC02>set u
USERDOMAIN=PC02
USERDOMAIN_ROAMINGPROFILE=PC02
USERNAME=user
USERPROFILE=C:\Users\user
```
## After Join Domain
```
C:\PC02>set u
USERDNSDOMAIN=LAB.LOCAL 	<== new entry, DNS Domain Name
USERDOMAIN=LAB			<== change from hostname to Domain name
USERDOMAIN_ROAMINGPROFILE=LAB	<== change from hostname to Domain name
USERNAME=user1			<== change from local user to Domain user
USERPROFILE=C:\Users\user1	<== change from local user to Domain user
```
## 
```

```