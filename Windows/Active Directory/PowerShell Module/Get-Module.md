How to Install and Import Active Directory PowerShell Module
Jeff Brown
5 min read
Published November 3, 2021
Last updated January 10, 2022
https://www.varonis.com/blog/powershell-active-directory-module

# Installation on Windows 10

Settings > Systems > About > Version (e.g. 21H1, 22H2)

## Installing on Windows 10 Prior to Version 1809

Download the RSAT Tools for Windows 10:
https://www.microsoft.com/en-us/download/details.aspx?id=45520

To verify the module is available, run the Get-Module command specifying the -Name (ActiveDirectory) and the -ListAvailable parameter to search all modules installed on the system.

Get-Module -Name ActiveDirectory -ListAvailable

