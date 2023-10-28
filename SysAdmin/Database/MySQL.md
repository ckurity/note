- [TL;DR](#tldr)
- [Login](#login)
	- [Default root User](#default-root-user)
	- [Different User with Password](#different-user-with-password)
- [Flags](#flags)
- [SHOW VARIABLES LIKE](#show-variables-like)
- [MySQL User](#mysql-user)
	- [Current User](#current-user)
    - [List all users in MySQL](#list-all-users-in-mysql)
    - [New User](#new-user)
    - [Change Mysql User's Password](#change-mysql-users-password)
- [Database](#database)
    - [SELECT database();](#select-database)
    - [SHOW DATABASES;](#show-databases)
    - [USE db](#use-db)
    - [SHOW TABLES in the current database](#show-tables-in-the-current-database)
    - [CREATE DATABASE](#create-database)
    - [GRANT PRIVILEGES](#grant-privileges)
    - [Delete Database](#delete-database)
- [SELECT * FROM table_name;](#select--from-table_name)
- [Table](#table)
    - [Delete All The Records In The "Users" Table](#delete-all-the-records-in-the-users-table)
- [Log](#log)
    - [Make Changes](#make-changes)
    - [service mysql restart](#service-mysql-restart)
- [OneLiner](#oneliner)
    - [No database selected](#no-database-selected)
- [Backup](#backup)
- [Restore](#restore)

# [TL;DR](#tldr-1)
```sh
mysql
SELECT user, host FROM mysql.user;
SELECT user();

SELECT database();
SHOW DATABASES;

USE dvwa
USE newDB

SHOW TABLES;
DESC users;

SELECT * FROM users;
SELECT * FROM dvwa.users;

SELECT user,password FROM users;
SELECT user,password FROM dvwa.users;
```

# [Login](#login-1)

## [Default root User](#default-root-user-1)
without password
```sh
# mysql
# mysql -u root
# mysql -u root -p

root@27624a0fe48a:~# mysql
MariaDB [(none)]> SELECT user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)
```

## [Different User with Password](#different-user-with-password-1)
```sh
root@27624a0fe48a:~# mysql -u app -pvulnerables
MariaDB [(none)]> SELECT user();
+---------------+
| user()        |
+---------------+
| app@localhost |
+---------------+
1 row in set (0.00 sec)
```

# Flags
## 
```sh
$ mysql --help | eg ' -h| -v'
  -h, --host=name     Connect to host.
  -v, --verbose       Write more. (-v -v -v gives the table output format).
```

## 
```sh
-e, --execute=name  Execute command and quit. (Disables --force and history file.)
```

# SHOW VARIABLES LIKE
## SHOW VARIABLES LIKE 'datadir';
```sh
root@02414dc10a09:/# mysql
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 33
Server version: 10.1.26-MariaDB-0+deb9u1 Debian 9.1

Copyright (c) 2000, 2017, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW VARIABLES LIKE 'datadir';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| datadir       | /var/lib/mysql/ |
+---------------+-----------------+
1 row in set (0.00 sec)

MariaDB [(none)]>
```

## 
```sh
MariaDB [(none)]> SHOW VARIABLES LIKE "general_log%";
+------------------+------------------+
| Variable_name    | Value            |
+------------------+------------------+
| general_log      | OFF              |
| general_log_file | 02414dc10a09.log |
+------------------+------------------+
2 rows in set (0.00 sec)

MariaDB [(none)]> 
```


# [MySQL User](#mysql-user-1)
## [Current User](#current-user-1)
```sh
MariaDB [(none)]> SELECT user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)
```

## [List all users in MySQL](#list-all-users-in-mysql-1)
```sh
# SELECT user, host FROM mysql.user;
# SELECT * FROM mysql.user;

MariaDB [(none)]> SELECT user, host FROM mysql.user;
+------+-----------+
| user | host      |
+------+-----------+
| app  | localhost |
| root | localhost |
+------+-----------+
2 rows in set (0.04 sec)
```

## New User
CREATE USER 'newUser'@'localhost' IDENTIFIED BY '123';
```sh
# GRANT ALL PRIVILEGES ON *.* TO 'newUser'@'localhost' IDENTIFIED BY '123';

MariaDB [(none)]> CREATE USER 'newUser'@'localhost' IDENTIFIED BY 'newUserPassword';
Query OK, 0 rows affected (0.01 sec)

MariaDB [(none)]> SELECT user,host FROM mysql.user;
+---------+-----------+
| user    | host      |
+---------+-----------+
| app     | localhost |
| newUser | localhost |
| root    | localhost |
+---------+-----------+
3 rows in set (0.00 sec)
```

## [Change Mysql User's Password](#change-mysql-users-password-1)
ALTER USER 'newUser'@'localhost' IDENTIFIED BY '123';
```sh
ALTER USER 'newUser'@'localhost' IDENTIFIED BY '123';
```

The ALTER USER statement in MariaDB may not be supported in some versions. To change the password for the "newUser" in MariaDB, you can use the SET PASSWORD statement as follows:
```sh
MariaDB [(none)]> SET PASSWORD FOR 'newUser'@'localhost' = PASSWORD('123');
Query OK, 0 rows affected (0.00 sec)
```

This command will set the password for the "newUser" account to '123'. If you're using an older version of MariaDB, you might need to use the UPDATE statement instead. Here's how you can do it:
```sh
UPDATE mysql.user
SET Password = PASSWORD('123')
WHERE User = 'newUser' AND Host = 'localhost';

FLUSH PRIVILEGES;
```

Grant Permissions to the New User for the New Database:

You should grant the necessary permissions for the "newUser" to access and manipulate the "newDB" database:
```sh
MariaDB [(none)]> GRANT ALL PRIVILEGES ON newDB.* TO 'newUser'@'localhost';
Query OK, 0 rows affected (0.01 sec)

MariaDB [(none)]> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)
```


# [Database](#database-1)

## [SELECT database();](#select-database)
```sh
MariaDB [(none)]> SELECT database();
+------------+
| database() |
+------------+
| NULL       |
+------------+
1 row in set (0.00 sec)
```

## [SHOW DATABASES;](#show-databases-1)
```sh
MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| dvwa               |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
4 rows in set (0.03 sec)
```

## [USE db](#use-db-1)
```sh
MariaDB [(none)]> USE dvwa
Database changed
MariaDB [dvwa]> SELECT database();
+------------+
| database() |
+------------+
| dvwa       |
+------------+
1 row in set (0.00 sec)
```


## [SHOW TABLES in the current database](#show-tables-in-the-current-database-1)
```sh
MariaDB [dvwa]> SHOW TABLES;
+----------------+
| Tables_in_dvwa |
+----------------+
| guestbook      |
| users          |
+----------------+
2 rows in set (0.04 sec)
```

# SELECT column FROM table_name
## [SELECT * FROM table_name;](#select--from-table_name-1)
```sh
MariaDB [dvwa]> SELECT * FROM users;
+---------+------------+-----------+---------+----------------------------------+-----------------------------+---------------------+--------------+
| user_id | first_name | last_name | user    | password                         | avatar                      | last_login          | failed_login |
+---------+------------+-----------+---------+----------------------------------+-----------------------------+---------------------+--------------+
|       1 | admin      | admin     | admin   | 5f4dcc3b5aa765d61d8327deb882cf99 | /hackable/users/admin.jpg   | 2023-10-12 09:30:35 |            0 |
|       2 | Gordon     | Brown     | gordonb | e99a18c428cb38d5f260853678922e03 | /hackable/users/gordonb.jpg | 2023-10-12 09:30:35 |            0 |
|       3 | Hack       | Me        | 1337    | 8d3533d75ae2c3966d7e0d4fcc69216b | /hackable/users/1337.jpg    | 2023-10-12 09:30:35 |            0 |
|       4 | Pablo      | Picasso   | pablo   | 0d107d09f5bbe40cade3de5c71e9e9b7 | /hackable/users/pablo.jpg   | 2023-10-12 09:30:35 |            0 |
|       5 | Bob        | Smith     | smithy  | 5f4dcc3b5aa765d61d8327deb882cf99 | /hackable/users/smithy.jpg  | 2023-10-12 09:30:35 |            0 |
+---------+------------+-----------+---------+----------------------------------+-----------------------------+---------------------+--------------+
5 rows in set (0.00 sec)
```

## [CREATE DATABASE](#create-database-1)
Create a MySQL Database
```sh
MariaDB [(none)]> CREATE DATABASE newDB;
Query OK, 1 row affected (0.01 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| dvwa               |
| information_schema |
| mysql              |
| newDB              |      # <== NEW DATABASE
| performance_schema |
+--------------------+
5 rows in set (0.00 sec)
```

# [GRANT PRIVILEGES](#grant-privileges-1)
```sh
MariaDB [(none)]> GRANT ALL PRIVILEGES ON *.* TO 'newUser'@'localhost' IDENTIFIED BY '123';
Query OK, 0 rows affected (0.00 sec)
```

# [Delete Database](#delete-database-1)
```sh
MariaDB [newDB]> DROP DATABASE newDB;
Query OK, 1 row affected (0.07 sec)
```

# [Table](#table-1)
## 
```sh
USE newDB;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -- Add other columns as needed
);

USE newDB;

CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL,
    population INT,
    capital VARCHAR(50),
    -- Add other columns as needed
);
```

## 
```sh
MariaDB [newDB]> DESC users;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| user_id  | int(11)      | NO   | PRI | NULL    | auto_increment |
| Name     | varchar(100) | NO   |     | NULL    |                |
| username | varchar(50)  | NO   |     | NULL    |                |
| password | varchar(255) | NO   |     | NULL    |                |
| country  | varchar(100) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)
```

## [Delete All The Records In The "Users" Table](#delete-all-the-records-in-the-users-table-1)
```sh
MariaDB [newDB]> DELETE FROM users;
Query OK, 5 rows affected (0.05 sec)

MariaDB [newDB]> SELECT * FROM users;
Empty set (0.00 sec)
```

# [Log](#log-1)
## 
```sh
# find / -name my.cnf 2>/dev/null 
/etc/alternatives/my.cnf
/etc/mysql/my.cnf
/var/lib/dpkg/alternatives/my.cnf

# find / -name my.cnf 2>/dev/null | xargs ls -lh
lrwxrwxrwx 1 root root 22 Oct 12  2018 /etc/alternatives/my.cnf -> /etc/mysql/mariadb.cnf
lrwxrwxrwx 1 root root 24 Oct 12  2018 /etc/mysql/my.cnf -> /etc/alternatives/my.cnf
-rw-r--r-- 1 root root 83 Oct 12  2018 /var/lib/dpkg/alternatives/my.cnf

[~] # cd /etc/mysql/
[/etc/mysql] # ls -lh
total 24K
drwxr-xr-x 2 root root 4.0K Oct 12  2018 conf.d
-rwxr-xr-x 1 root root 1.5K Aug 10  2017 debian-start
-rw------- 1 root root  277 Oct 12  2018 debian.cnf
-rw-r--r-- 1 root root  869 Aug 10  2017 mariadb.cnf
drwxr-xr-x 2 root root 4.0K Oct 12  2018 mariadb.conf.d
lrwxrwxrwx 1 root root   24 Oct 12  2018 my.cnf -> /etc/alternatives/my.cnf
-rw-r--r-- 1 root root  839 Jul  9  2016 my.cnf.fallback
[/etc/mysql] #

[/etc/mysql] # cp mariadb.cnf mariadb.cnf.bak
[/etc/mysql] # 
```

## 
```sh
[/etc/mysql] # nl mariadb.cnf
     1  # The MariaDB configuration file
     2  #
     3  # The MariaDB/MySQL tools read configuration files in the following order:
     4  # 1. "/etc/mysql/mariadb.cnf" (this file) to set global defaults,
     5  # 2. "/etc/mysql/conf.d/*.cnf" to set global options.
     6  # 3. "/etc/mysql/mariadb.conf.d/*.cnf" to set MariaDB-only options.
     7  # 4. "~/.my.cnf" to set user-specific options.
     8  #
     9  # If the same option is defined multiple times, the last one will apply.
    10  #
    11  # One can use all long options that the program supports.
    12  # Run program with --help to get a list of available options and with
    13  # --print-defaults to see which it would actually understand and use.
    14  #
    15  # This group is read both both by the client and the server
    16  # use it for options that affect everything
    17  #
    18  [client-server]
    19  # Import all .cnf files from configuration directory
    20  !includedir /etc/mysql/conf.d/
    21  !includedir /etc/mysql/mariadb.conf.d/
[/etc/mysql] # 
```

## [Make Changes](#make-changes-1)
```sh
# tail /etc/mysql/my.cnf -n 3
[mysqld]
general_log = 1
general_log_file = /var/log/mysql/general.log
```

## [service mysql restart](#service-mysql-restart-1)
```sh
# service mysql restart
[ ok ] Stopping MariaDB database server: mysqld.
[ ok ] Starting MariaDB database server: mysqld.
# 
# ls -lh /var/log/mysql/
total 16K
-rw-rw---- 1 mysql adm 7.1K Oct 12  2018 error.log
-rw-rw---- 1 mysql adm 5.5K Oct 15 13:26 general.log    # <== new file
```

```sh
tail -f /var/log/mysql/general.log
```

# [OneLiner](#oneliner-1)
```sh

```

```sh
$ docker exec -it VulnLab mysql -u newUser -p123 -e "SELECT database();"
+------------+
| database() |
+------------+
| NULL       |
+------------+
```

## [No database selected](#no-database-selected-1)
```sh
docker exec -it VulnLab mysql -u newUser -p123 newDB -e 'SELECT * FROM users'
docker exec -it VulnLab mysql -u newUser -p123 -e 'SELECT * FROM newDB.users'
```

```sh
$ docker exec -it VulnLab mysql -u newUser -p123 -e "SELECT * FROM users"
ERROR 1046 (3D000) at line 1: No database selected

$ docker exec -it VulnLab mysql -u newUser -p123 newDB -e "SELECT * FROM users"
+----+---------+----------+----------+----------+
| id | name    | username | password | country  |
+----+---------+----------+----------+----------+
|  1 | Admin   | admin    | 123      | Country1 |
|  2 | Alice   | alice    | Alice1   | Country1 |
+----+---------+----------+----------+----------+

$ docker exec -it VulnLab mysql -u newUser -p123 -e "SELECT * FROM newDB.users"
+----+---------+----------+----------+----------+
| id | name    | username | password | country  |
+----+---------+----------+----------+----------+
|  1 | Admin   | admin    | 123      | Country1 |
|  2 | Alice   | alice    | Alice1   | Country1 |
+----+---------+----------+----------+----------+
```

# [Backup](#backup-1)
```sh
mysqldump -u [username] -p [database_name] > [output_file].sql
mysqldump -u newUser -p123 newDB > newDB.sql
docker exec -it VulnLab mysql -e 'mysqldump -u newUser -p123 newDB > newDB.sql'

# to export all databases
mysqldump -u [username] -p --all-databases > [output_file].sql

# export specific tables from a database
mysqldump -u root -p my_database --tables users products > my_database.sql
```

```sh
$ l n*
ls: cannot access 'n*': No such file or directory

$ docker exec -it VulnLab mysqldump -u newUser -p123 newDB > newDB.sql

$ l n*
-rw-r--r-- 1 kali kali 2.2K Oct 24 22:42 newDB.sql
```

# [Restore](#restore-1)
```sh
mysql -u [username] -p [database_name] < [input_file].sql
mysql -u newUser -p newDB < newDB.sql
```

# References


# References


