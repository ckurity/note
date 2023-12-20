- 
- [References](#references)

-------------------------------------------

# [CMD](#cmd)
## [Set a Variable in CMD](#set-a-variable-in-cmd)
```sh
set variable_name=value
```

## [Use a Variable in CMD](#use-a-variable-in-cmd)
```sh
echo %variable_name%
```

## [Example in CMD](#example-in-cmd)
```sh
set ip=10.1.1.1
ping %ip%
curl %ip%
curl %ip%/Certify.exe -o Certify.exe
```

# [PowerShell](#powershell)
## [Set a Variable in PowerShell](#set-a-variable-in-powershell)
```sh
$variable_name = 'value'
```

## [Use a Variable in PowerShell](#use-a-variable-in-powershell)
```sh
Write-Host $variable_name
```

## [Example in PowerShell](#example-in-powershell)
Must use quote
```sh
$ip = '10.1.1.1'
$ip
ping $ip
```

# [References](#references-1)

