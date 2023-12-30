# Get-Variable

The equivalent of the Python dir() command

This will give you a list of all the variables along with their values and other information in the current PowerShell session. Note that PowerShell treats everything as a variable, including functions and modules, so you will see all those entities in the output as well. If you want to filter the results to see only certain types of variables, you can use the -Scope parameter with values like "Global" or "Local" to narrow down the results.

```sh
PS C:\PC10> Get-Variable

Name                           Value
----                           -----
$                              Get-Variable
?                              True
^                              Get-Variable
Advapi32                       Win32.advapi32
args                           {}
ConfirmPreference              High
ConsoleFileName
DebugPreference                SilentlyContinue
DS_DOMAIN_TRUSTS               DS_DOMAIN_TRUSTS
...
```