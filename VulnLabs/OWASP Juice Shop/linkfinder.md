```sh
$ python linkfinder.py   
usage: linkfinder.py [-h] [-d] -i INPUT [-o OUTPUT] [-r REGEX] [-b] [-c COOKIES] [-t <seconds>]
linkfinder.py: error: the following arguments are required: -i/--input
```

```sh
$ python linkfinder.py -h                       
usage: linkfinder.py [-h] [-d] -i INPUT [-o OUTPUT] [-r REGEX] [-b] [-c COOKIES] [-t <seconds>]

options:
  -h, --help            show this help message and exit
  -d, --domain          Input a domain to recursively parse all javascript located in a page
  -i INPUT, --input INPUT
                        Input a: URL, file or folder. For folders a wildcard can be used (e.g. '/*.js').
  -o OUTPUT, --output OUTPUT
                        Where to save the file, including file name. Default: output.html
  -r REGEX, --regex REGEX
                        RegEx for filtering purposes against found endpoint (e.g. ^/api/)
  -b, --burp
  -c COOKIES, --cookies COOKIES
                        Add cookies for authenticated JS files
  -t <seconds>, --timeout <seconds>
                        How many seconds to wait for the server to send data before giving up (default: 10 seconds)
```