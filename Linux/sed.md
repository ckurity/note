# sed   

- [Print A Particular Line Number](#print-a-particular-line-number)
- [Print A Range Of Lines](#print-a-range-of-lines)
- [Replace The First Occurrence In Particular Line Number](#replace-the-first-occurrence-in-particular-line-number)

### TL;DR
```sh
-n tells sed to suppress automatic printing.
```

## Remove Empty/blank Lines
"-i" will edit the file in-place.
```sh
sed -i '/^$/d' file.txt
```

## [Print A Particular Line Number](#print-a-particular-line-number-1)
/etc/php/7.0/apache2/php.ini
```sh
# grep -n 'display_errors = ' php.ini
462:display_errors = Off

# sed -n '462p' php.ini
display_errors = Off
```

## [Print A Range Of Lines](#print-a-range-of-lines-1)
e.g. from line 460 to 462
```sh
# sed -n '460,462p' php.ini
; Production Value: Off
; http://php.net/display-errors
display_errors = Off
```


## [Replace The First Occurrence In Particular Line Number](#replace-the-first-occurrence-in-particular-line-number-1)
```sh
sed '462s/Off/On/g' php.ini
```

If you want to replace all occurrences of "Off" in that line, you can add the g flag:
```sh
sed '462s/Off/On/g' php.ini
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