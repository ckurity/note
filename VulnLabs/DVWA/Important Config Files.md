- [/etc/apache2/apache2.conf](#etcapache2apache2conf)
- [/etc/php/7.0/apache2/php.ini](#etcphp70apache2phpini)
    - [display_errors](#display_errors)

# 

-------------------------------------------

# [/etc/apache2/apache2.conf](#etcapache2apache2conf-1)
1. This file is the main configuration file for the Apache HTTP Server. Apache is a popular web server that serves web content and processes HTTP requests.
1. `/etc/apache2/apache2.conf` contains global configuration settings for Apache, which affect the behavior of the web server as a whole.
1. Configuration options in this file may include server-wide settings, such as the server's user and group, the default port to listen on (usually port 80 for HTTP), and various security and performance settings.
1. This file is typically modified by administrators to configure how Apache behaves on their system. Changes in this file can affect all websites hosted on the server.


## 
```sh

```

## 
```sh

```

## 
```sh

```

## [/etc/php/7.0/apache2/php.ini](#etcphp70apache2phpini-1)
1. This file is the configuration file for the PHP scripting language when it is used in conjunction with the Apache web server. PHP is a server-side scripting language often used for creating dynamic web pages.
1. `/etc/php/7.0/apache2/php.ini` contains settings that are specific to PHP, affecting how PHP scripts behave when executed on the web server.
1. Configuration options in this file may include settings related to error reporting, resource limits (memory, execution time), and extensions or modules that PHP should load.
1. Administrators or developers typically edit this file to customize the PHP environment to suit the requirements of their web applications.

In summary, /etc/apache2/apache2.conf is about configuring the Apache web server itself, while /etc/php/7.0/apache2/php.ini is about configuring the PHP interpreter when it is used in conjunction with Apache. These two configuration files play different but complementary roles in setting up a web server environment.

Please note that the file paths and version numbers mentioned are examples and may vary depending on your specific server configuration and the versions of Apache and PHP you are using.

## [display_errors](#display_errors-1)
The display_errors directive in the PHP configuration file (php.ini) controls whether PHP should display error messages directly in the web browser when a PHP script encounters an error. The directive has three possible values:

1. `display_errors = On`: This setting instructs PHP to display error messages in the web browser when a script encounters an error. This can be useful for debugging purposes during development, but it's generally not recommended for a production environment due to security and privacy concerns.

1. `display_errors = Off`: When set to "Off," PHP will not display error messages in the web browser. Instead, it may log errors to the server's error logs or handle them in a more controlled manner. This is the recommended setting for a production environment, as it helps keep error details private and secure.

1. `display_errors = stderr`: This option redirects error messages to the standard error output (usually the web server's error log) rather than displaying them in the browser. This can be a compromise between the first two options, allowing you to review error messages in the server's logs while keeping them out of the browser.

After making the change, you'll need to restart your Apache web server for the new configuration to take effect. You can do this with a command like:
```sh
service apache2 restart
sudo systemctl restart apache2  # Doesn't work with old system like this DVWA image
```

## Before
```sh
$ curl http://localhost/a/
Connection failed: Access denied for user 'app'@'localhost' (using password: YES)

# grep -n 'display_errors = ' /etc/php/7.0/apache2/php.ini
462:display_errors = Off

# sed -n '462p' php.ini
display_errors = Off
```

## Make a Change
```sh
# sed -i '462s/Off/On/' php.ini
# sed -n '462p' php.ini
display_errors = On

# service apache2 restart
```

## Before & After
```sh
# Before
$ curl http://localhost/a/
Connection failed: Access denied for user 'app'@'localhost' (using password: YES)

# After
$ curl http://localhost/a/
<br />
<b>Warning</b>:  mysqli::__construct(): (HY000/1045): Access denied for user 'app'@'localhost' (using password: YES) in <b>/var/www/html/a/con.php</b> on line <b>9</b><br />
Connection failed: Access denied for user 'app'@'localhost' (using password: YES)
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

# References

