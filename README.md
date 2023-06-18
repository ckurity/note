# My Note

## Rustscan
- Basic rustscan command:
    ```
  rustscan -a $ip
- Advanced rustscan command:
    ```
  rustscan -a $ip -- -Pn -A -oA nmap-A_$(date +%y%m%d-%H%M)# note
## nmap -sV
- grep
    ```
    grep -P '^PORT|^\d' *.nmap | sed 's/syn-ack//'
## nuclei
```
nuclei -u http://$ip | tee nuclei-80_$(date +%y%m%d-%H%M).txt
nuclei -u $ip | tee nuclei-443_$(date +%y%m%d-%H%M).txt
nuclei -u $ip:$p | tee nuclei-${p}_$(date +%y%m%d-%H%M).txt
```
## feroxbuster
```
feroxbuster -nu http://$ip -o ferox-80_$(date +%y%m%d-%H%M).txt
feroxbuster -nu $ip -o ferox-443_$(date +%y%m%d-%H%M).txt
feroxbuster -knu $ip -o ferox-443_$(date +%y%m%d-%H%M).txt
feroxbuster -nu $ip:$port -o ferox-${port}_$(date +%y%m%d-%H%M).txt
```
## curl
```
curl -sv $ip |html2text
curl -s $ip |html2text |grep -v ^$
curl -s $ip |sed -n '/<form /,/form>/p'
```
```
lynx -dump -listonly -nonumbers $ip
lynx -dump -listonly -nonumbers $ip |uniq
lynx -dump -listonly -nonumbers $ip/simple |sort|uniq|nl
lynx -dump -listonly -nonumbers $ip:$p
```
## nikto
```
nikto -h $ip -o nikto_$(date +%y%m%d-%H%M).txt
```
## smbclient
```
smbclient -NL $ip
smbclient -N //$ip/xxx
enum4linux $ip | tee enum4linux_$(date +%y%m%d-%H%M).txt
```
