- [Encoding](#encoding)
- [Decoding](#decoding)
- [References](#references)

-------------------------------------------

## [Encoding](#encoding-1)
```sh
# Text to be encoded
$textToEncode = "Hello, World!"

# Encode to Base64
$encodedText = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($textToEncode))

# Display the encoded text
Write-Host "Encoded Text: $encodedText"
```

## [Decoding](#decoding-1)
```sh
# Encoded text to be decoded
$encodedText = "SGVsbG8sIFdvcmxkIQ=="

# Decode from Base64
$decodedText = [System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($encodedText))

# Display the decoded text
Write-Host "Decoded Text: $decodedText"
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

