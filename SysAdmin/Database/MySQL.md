- [Login](#login)
- [Flags](#flags)
- [SHOW VARIABLES LIKE](#show-variables-like)
- [MySQL User](#list-all-users-in-mysql)
    - [List all users in MySQL](#list-all-users-in-mysql)
    - [New User](#new-user)
- [Database](#database)
    - [SELECT database();](#select-database)
    - [SHOW DATABASES;](#show-databases)
    - [USE db](#use-db)
    - [SHOW TABLES in the current database](#show-tables-in-the-current-database)
    - [CREATE DATABASE](#create-database)
- [SELECT * FROM table_name;](#select--from-table_name)

# Login

## 
```sh
root@27624a0fe48a:~# mysql   
MariaDB [(none)]> SELECT user();
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)
```

## 
```sh
root@27624a0fe48a:~# mysql -u app -pvulnerables
MariaDB [(none)]> SELECT user();
+---------------+
| user()        |
+---------------+
| app@localhost |
+---------------+
1 row in set (0.00 sec)

MariaDB [(none)]>
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





# MySQL User
## List all users in MySQL
```sh
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
MariaDB [(none)]> GRANT ALL PRIVILEGES ON *.* TO 'db_user'@'localhost' IDENTIFIED BY '123';
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> SELECT user,host FROM mysql.user;
+---------+-----------+
| user    | host      |
+---------+-----------+
| app     | localhost |
| db_user | localhost |     # <== NEW USER
| root    | localhost |
+---------+-----------+
3 rows in set (0.00 sec)
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

## 
```sh

```

## 
```sh

```

## [CREATE DATABASE](#create-database-1)
Create a MySQL Database
```sh
MariaDB [(none)]> CREATE DATABASE db_name;
Query OK, 1 row affected (0.01 sec)

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| db_name            |      # <== NEW DATABASE
| dvwa               |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
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

