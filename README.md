# My Note

## Rustscan
- Basic rustscan command:
    ```
  rustscan -a $ip
- Advanced rustscan command:
    ```
  rustscan -a $ip -- -Pn -A -oA nmap-A_$(date +%y%m%d-%H%M)