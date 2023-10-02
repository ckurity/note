# curl

- [Basic](#basic)
- [Check files without downloading it](#check-the-availability-of-files-without-downloading-it)

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