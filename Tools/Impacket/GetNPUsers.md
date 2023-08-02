Using anonymous bind you can enumerate LDAP and get a list of valid usernames.

Then, you may use the GetNPUsers script from the impacket to check which of these usernames has Kerberos pre-authentication disabled.

This is called AS-REP-Roasting.

```
GetNPUsers htb.local/ -r
```