Timezone

- [Syntax](#syntax)
- [Examples](#examples)
	- [Before](#before)
	- [list-timezones](#list-timezones)
	- [set-timezone](#set-timezone)
	- [After](#after)

# Syntax
```sh
timedatectl
timedatectl list-timezones | grep Kuala
sudo timedatectl set-timezone Asia/Kuala_Lumpur
timedatectl
```

# Examples
## Before
```sh
$ timedatectl
               Local time: Sun 2023-10-01 22:03:53 EDT			# Default, EDT -4
           Universal time: Mon 2023-10-02 02:03:53 UTC
                 RTC time: Thu 2023-09-28 23:39:13
                Time zone: US/Eastern (EDT, -0400)				# Default, EDT -4
System clock synchronized: no
              NTP service: n/a
          RTC in local TZ: no
```

## list-timezones
```sh
$ timedatectl list-timezones | grep Kuala
Asia/Kuala_Lumpur
```

## set-timezone
After
```sh
$ sudo timedatectl set-timezone Asia/Kuala_Lumpur
$
```

## After
```sh
$ timedatectl
               Local time: Mon 2023-10-02 10:04:41 +08			# New, MYT +8
           Universal time: Mon 2023-10-02 02:04:41 UTC
                 RTC time: Thu 2023-09-28 23:40:01
                Time zone: Asia/Kuala_Lumpur (+08, +0800)		# New, MYT +8
System clock synchronized: no
              NTP service: n/a
          RTC in local TZ: no
```

# 
### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```