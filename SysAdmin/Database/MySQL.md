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
- [SELECT * FROM table_name;](#select--from-table_name)
- [Table](#table)

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
```sh
# GRANT ALL PRIVILEGES ON *.* TO 'db_user'@'localhost' IDENTIFIED BY '123';

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

# References


# References


