- [Check Language Mode](#check-language-mode)
    - [Change Language Mode](#change-language-mode)
- [References](#references)

-------------------------------------------

## 
```sh
PS C:> gc .\script.ps1
function hey() {
  Write-Host "Hello, World by Host!"
  Write-Output "Hello, world by Output!"
}
PS C:>
```

## 
```sh
PS C:> .\script.ps1
PS C:>
PS C:> gcm hey*
PS C:>
```

## 
```sh
PS C:> Import-Module .\script.ps1
Import-Module : Importing *.ps1 files as modules is not allowed in ConstrainedLanguage mode.
At line:1 char:1
+ Import-Module .\script.ps1
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : PermissionDenied: (:) [Import-Module], InvalidOperationException
    + FullyQualifiedErrorId : Modules_ImportPSFileNotAllowedInConstrainedLanguage,Microsoft.PowerShell.Commands.ImportModuleCommand

PS C:> gcm hey*
PS C:>
```

```sh
PS C:> . .\script.ps1
C:\script.ps1 : Cannot dot-source this command because it was defined in a different language mode. To invoke this command without importing its contents, omit the '.' operator.
At line:1 char:1
+ . .\script.ps1
+ ~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidOperation: (:) [script.ps1], NotSupportedException
    + FullyQualifiedErrorId : DotSourceNotSupported,script.ps1
PS C:> gcm hey*
PS C:>
```

The error you're encountering suggests that you're trying to dot-source a PowerShell script (. .\script.ps1) that was defined in a different language mode. This error usually occurs when you are trying to run a script that was created or saved in a restricted language mode, such as ConstrainedLanguage.

Here are a few suggestions to resolve this issue:

## [Check Language Mode](#check-language-mode-1)
```sh
PS C:> $ExecutionContext.SessionState.LanguageMode
ConstrainedLanguage
PS C:>
```

### [Change Language Mode](#change-language-mode-1)
If you are in ConstrainedLanguage mode and have control over the environment, you might consider changing the language mode to FullLanguage. However, be aware of security implications when doing this, as `ConstrainedLanguage` mode is designed to enhance security.
```sh
$ExecutionContext.SessionState.LanguageMode = "FullLanguage"
```

```sh
PS C:> $ExecutionContext.SessionState.LanguageMode = "FullLanguage"
Cannot set property. Property setting is supported only on core types in this language mode.
At line:1 char:1
+ $ExecutionContext.SessionState.LanguageMode = "FullLanguage"
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidOperation: (:) [], RuntimeException
    + FullyQualifiedErrorId : PropertySetterNotSupportedInConstrainedLanguage

PS C:>
PS C:> $ExecutionContext.SessionState.LanguageMode
ConstrainedLanguage
PS C:>
```

The error message indicates that you are in a constrained language mode and attempting to change the language mode to `FullLanguage`, but this action is not allowed in the current environment.

`ConstrainedLanguage` mode is a security feature in PowerShell that restricts certain language elements to improve security. In this mode, you can't change the language mode or perform certain operations for security reasons.

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

