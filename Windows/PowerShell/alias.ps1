# New-Item -ItemType File -Path $PROFILE -Force
# New-Item -ItemType File -Path $PROFILE.CurrentUserAllHosts -Force
# notepad $PROFILE

Set-Alias a Get-Alias # alias
Set-Alias c Clear-Host # cls
Set-Alias e Write-Output # echo
Set-Alias gh Get-Help

Remove-Item -Path Alias:h
Set-Alias h hostname

Set-Alias i ipconfig
Set-Alias l Get-ChildItem # ls
Set-Alias p powershell
Set-Alias w whoami

# Set-Alias s 'C:\Program Files\Sublime Text 3\sublime_text.exe'
# Set-Alias s 'C:\Program Files (x86)\Sublime Text 3\sublime_text.exe'
# Set-Alias i "netsh i i sh con Ethernet" # troubleshoot this

# . $PROFILE