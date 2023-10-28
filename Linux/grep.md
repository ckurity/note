- [grep before (?<=) and after (?=)](#grep-before--and-after)
    - [grep HTML form](#grep-html-form)
- [grep can't read UTF-16](#grep-cant-read-utf-16)

# [grep before (?<=) and after (?=)](#grep-before--and-after-1)

```sh
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

## [grep HTML form](#grep-html-form-1)
```sh
$ curl -s $t:$port | grep -n form
19:                <form action="" method="get">
21:                 <div class="form-group">
34:                    <input type="text" name="mooing" class="form-control" id="commandString"
40:                </form>

$ curl -s $t:$port | grep -Pzo '<form[\s\S]*?</form>'
<form action="" method="get">
                    <h4 class="display-4">Cowsay Online</h4>
                    <div class="form-group">
                    <label>Choose your cow: </label>
                    <select name=cow>
                       <option value=default>default</option>
                       <option value=small>small</option>
                       <option value=tux>tux</option>
                       <option value=dragon>dragon</option>
                       <option value=kitty>kitty</option>
                       <option value=moose>moose</option>
                       <option value=squirrel>squirrel</option>
                       <option value=vader>vader</option>
                       <option value=moofasa>moofasa</option>
                    </select>
                    <input type="text" name="mooing" class="form-control" id="commandString"
                            placeholder="Enter your inner cow's mooing">
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Submit</button>

                    <pre>                    </pre>
                </form>
```

-P enables Perl-compatible regular expressions, which allows you to use [\s\S] to match any character (including newline characters).

-z treats the input as null-terminated, allowing us to match across multiple lines.

'<form[\s\S]*?</form>' is the regular expression that matches the text starting with <form and ending with </form.

```sh
$ echo $f
./active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Preferences/Groups/Groups.xml
```

```sh
$ nl $f
     1  <?xml version="1.0" encoding="utf-8"?>
     2  <Groups clsid="{3125E937-EB16-4b4c-9934-544FC6D24D26}"><User clsid="{DF5F1855-51E5-4d24-8B1A-D9BDE98BA1D1}" name="active.htb\SVC_TGS" image="2" changed="2018-07-18 20:46:06" uid="{EF57DA28-5F69-4530-A59E-AAB58578219D}"><Properties action="U" newName="" fullName="" description="" cpassword="edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ" changeLogon="0" noChange="1" neverExpires="1" acctDisabled="0" userName="active.htb\SVC_TGS"/></User>
     3  </Groups>
```

```sh
$ grep -o 'cpassword="[^"]*"' $f 
cpassword="edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ"
```

```sh
-o: This option tells grep to only output the matched part of the line (i.e., the value within the quotes) instead of the entire line.

cpassword=": This part of the pattern matches the literal text cpassword=".

[^"]*: This part matches any character except double quotes ("), represented by [^"], zero or more times (*).
```

```sh
$ grep -oP '(?<=cpassword=")[^"]*' $f
edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ
```

```sh
-o: This option tells grep to only output the matched part of the line.

-P: This option enables Perl-Compatible Regular Expressions (PCRE), which supports lookbehind and lookahead.

(?<=cpassword="): This is a positive lookbehind assertion, which checks for the presence of cpassword=" before the desired value without including it in the match.

[^"]*: This matches any character except double quotes (") zero or more times, effectively capturing the value inside the quotes.
```

```sh
$ cat $file | tr '<' '\n' | tr ' ' '\n' | eg 'cpassword|userName'

cpassword="edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ"

userName="active.htb\SVC_TGS"/>
```

```sh
$ cat $file | tr '<' '\n' | tr ' ' '\n' | eg 'cpassword|userName' | g -oP '(?<==").*(?=")'

edBSHOwhZLTjt/QS9FeIcJ83mjWA98gw9guKOhJOdcqh+ZGMeXOsQbCpZ3xUjTLfCuNH8pG5aSVYdYw/NglVmQ

active.htb\SVC_TGS
```

# [grep can't read UTF-16](#grep-cant-read-utf-16-1)
Solution: Convert UTF-16 to UTF-8 using iconv
```sh
$ file winpeas.txt 
winpeas.txt: Unicode text, UTF-16, little-endian text, with very long lines (696), with CRLF line terminators, with escape sequences

$ cat winpeas.txt| grep Win32_
$ iconv -f UTF-16LE -t UTF-8 winpeas.txt| grep Win32_
   - Getting Win32_UserAccount info...
```

### TLDR
```

```

## 
```sh
$ cat Forest.txt 
user:[Administrator] rid:[0x1f4]
user:[Guest] rid:[0x1f5]
user:[krbtgt] rid:[0x1f6]
```

## 
```sh
$ cat Forest.txt | grep -o user:
user:
```

## 
```sh
$ cat Forest.txt | grep -o user:[
zsh: bad pattern: user:[

$ cat Forest.txt | grep -o 'user:['
grep: Invalid regular expression
```


## 
```sh
$ grep --help | grep fix
  -F, --fixed-strings       PATTERNS are strings
```

## 
```sh
$ cat Forest.txt | grep -oF 'user:['
user:[
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
