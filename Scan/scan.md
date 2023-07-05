# Scan

## rustscan
- Basic rustscan command:
    ```
  rustscan -a $ip
    ```
- nmap -A:
    ```
  rustscan -a $ip -- -Pn -A -oA nmap-A_$(date +%y%m%d-%H%M)
  ```
## nmap -sV
- grep
    ```
    grep -P '^PORT|^\d' *.nmap | sed 's/syn-ack//'
    ```

- Create a new directory based on Rustscan/Nmap output
    ```
    grep -oP '^\d+' *.nmap | xargs -I {} mkdir tcp-{}
    ```
## nuclei
- http tcp/80
```
nuclei -u http://$ip | tee nuclei-80_$(date +%y%m%d-%H%M).txt
```
- https tcp/443
```
nuclei -u $ip | tee nuclei-443_$(date +%y%m%d-%H%M).txt
```
- Custom port
```
nuclei -u $ip:$p | tee nuclei-${p}_$(date +%y%m%d-%H%M).txt
```
## feroxbuster
- http tcp/80
```
feroxbuster -nu http://$ip -o ferox-80_$(date +%y%m%d-%H%M).txt
```
- https tcp/443
```
feroxbuster -nu $ip -o ferox-443_$(date +%y%m%d-%H%M).txt
```
- https tcp/443 ignore cert
```
feroxbuster -knu $ip -o ferox-443_$(date +%y%m%d-%H%M).txt
```
- Custom port
```
feroxbuster -nu $ip:$port -o ferox-${port}_$(date +%y%m%d-%H%M).txt
```
## curl
```
curl -sv $ip |html2text
```
```
curl -s $ip |html2text |grep -v ^$
```
```
curl -s $ip |sed -n '/<form /,/form>/p'
```
## lynx
```
lynx -dump -listonly -nonumbers $ip
```
```
lynx -dump -listonly -nonumbers $ip |uniq
```
```
lynx -dump -listonly -nonumbers $ip/simple |sort|uniq|nl
```
```
lynx -dump -listonly -nonumbers $ip:$p
```
## nikto
```
nikto -h $ip -o nikto_$(date +%y%m%d-%H%M).txt
```
## smbclient
```
smbclient -NL $ip
```
```
smbclient -N //$ip/xxx
```
```
enum4linux $ip | tee enum4linux_$(date +%y%m%d-%H%M).txt
```

```
```

```
```