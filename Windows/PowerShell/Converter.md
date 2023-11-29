- [Hex to Char](#hex-to-char)
- [Char to Hex](#char-to-hex)
- [Char to Decimal](#char-to-decimal)
- [Binary to Hex](#binary-to-hex)
- [Hex to Binary](#hex-to-binary)
- [Decimal to Hex](#decimal-to-hex)
- [Hex to Decimal](#hex-to-decimal)

- [References](#references)

-------------------------------------------

## [Hex to Char](#hex-to-char)
```sh
$hexValue = '41'  # Replace with your hex value
[char]::ConvertFromUtf32([Convert]::ToInt32($hexValue, 16))
```

```sh
PS C:\> $hexValue = '41'  # Replace with your hex value
PS C:\> [char]::ConvertFromUtf32([Convert]::ToInt32($hexValue, 16))
A
PS C:\>
```

## [Char to Hex](#char-to-hex)
```sh
$charValue = 'A'
$hexValue = [Convert]::ToString([char]::ConvertToUtf32($charValue, 0), 16)
$hexValue
```

```sh
PS C:\> $charValue = 'A'
PS C:\> $hexValue = [Convert]::ToString([char]::ConvertToUtf32($charValue, 0), 16)
PS C:\> $hexValue
41
PS C:\>
```

## [Char to Decimal](#char-to-decimal)
```sh
$charValue = 'A'  # Replace with your character
[char]::ConvertToUtf32($charValue, 0)
```

```sh
PS C:\> $charValue = 'A'  # Replace with your character
PS C:\> [char]::ConvertToUtf32($charValue, 0)
65
PS C:\>
```

## [Binary to Hex](#binary-to-hex)
```sh
$binaryValue = '11011011'  # Replace with your binary value
$hexValue = [Convert]::ToString([Convert]::ToInt32($binaryValue, 2), 16)
```

## 
```sh
PS C:\> $binaryValue = '11011011'  # Replace with your binary value
PS C:\> $hexValue = [Convert]::ToString([Convert]::ToInt32($binaryValue, 2), 16)
PS C:\>
```

## [Hex to Binary](#hex-to-binary)
```sh
$hexValue = '1A'  # Replace with your hex value
$binaryValue = [Convert]::ToString([Convert]::ToInt32($hexValue, 16), 2)
```

## 
```sh
PS C:\> $hexValue = '1A'  # Replace with your hex value
PS C:\> $binaryValue = [Convert]::ToString([Convert]::ToInt32($hexValue, 16), 2)
PS C:\>
```

## [Decimal to Hex](#decimal-to-hex)
```sh
$decimalValue = 255  # Replace with your decimal value
$hexValue = [Convert]::ToString($decimalValue, 16)
```

## 
```sh
PS C:\> $decimalValue = 255  # Replace with your decimal value
PS C:\> $hexValue = [Convert]::ToString($decimalValue, 16)
PS C:\>
```


## [Hex to Decimal](#hex-to-decimal)
```sh
$hexValue = 'FF'  # Replace with your hex value
$decimalValue = [Convert]::ToInt32($hexValue, 16)
```

## 
```sh
PS C:\> $hexValue = 'FF'  # Replace with your hex value
PS C:\> $decimalValue = [Convert]::ToInt32($hexValue, 16)
PS C:\>
```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

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

