### grep before (?<=) and after (?=)
```
$ cat text 
BEFOREXYZAFTER
$ 
$ cat text | grep -oP '(?<=BEFORE)'
$ cat text | grep -oP '(?<=BEFORE).*'
XYZAFTER
$ cat text | grep -oP '(?<=BEFORE).*(?=AFTER)'
XYZ
$ 
```

```
$ echo $f              
./active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Preferences/Groups/Groups.xml
```
```
$ nl $f                                           
     1  <?xml version="1.0" encoding="utf-8"?>
     2  <Groups clsid="{3125E937-EB16-4b4c-9934-544FC6D24D26}"><User clsid="{DF5F1855-51E5-4d24-8B1A-D9BDE98BA1D1}" name="active.htb\SVC_TGS" image="2" changed="2018-07-18 20:46:06" uid="{EF57DA28-5F69-4530-A59E-AAB58578219D}"><Properties action="U" newName="" fullName="" description="" cpassword="edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ" changeLogon="0" noChange="1" neverExpires="1" acctDisabled="0" userName="active.htb\SVC_TGS"/></User>
     3  </Groups>
```
```
$ grep -o 'cpassword="[^"]*"' $f 
cpassword="edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ"
```
```
-o: This option tells grep to only output the matched part of the line (i.e., the value within the quotes) instead of the entire line.

cpassword=": This part of the pattern matches the literal text cpassword=".

[^"]*: This part matches any character except double quotes ("), represented by [^"], zero or more times (*).
```
```
$ grep -oP '(?<=cpassword=")[^"]*' $f
edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ
```
```
-o: This option tells grep to only output the matched part of the line.

-P: This option enables Perl-Compatible Regular Expressions (PCRE), which supports lookbehind and lookahead.

(?<=cpassword="): This is a positive lookbehind assertion, which checks for the presence of cpassword=" before the desired value without including it in the match.

[^"]*: This matches any character except double quotes (") zero or more times, effectively capturing the value inside the quotes.
```

```
$ cat $file | tr '<' '\n' | tr ' ' '\n' | eg 'cpassword|userName'                         

cpassword="edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ"

userName="active.htb\SVC_TGS"/>
```

```
$ cat $file | tr '<' '\n' | tr ' ' '\n' | eg 'cpassword|userName' | g -oP '(?<==").*(?=")'

edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ

active.htb\SVC_TGS
```

```
```

