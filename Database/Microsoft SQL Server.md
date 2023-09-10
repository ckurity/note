# Microsoft SQL Server

### Client
sqsh
impacket-mssqlclient
dbeaver (GUI)

The server selected protocol version TLS10 is not accepted by client preferences [TLS13, TLS12]

The driver could not establish a secure connection to SQL Server by using Secure Sockets Layer (SSL) encryption. Error: "The server selected protocol version TLS10 is not accepted by client preferences [TLS13, TLS12]". ClientConnectionId:1b86e0ed-720e-4ca5-8c86-09e77ec79964
  The server selected protocol version TLS10 is not accepted by client preferences [TLS13, TLS12]
  The server selected protocol version TLS10 is not accepted by client preferences [TLS13, TLS12]

### [Login: mssqlclient 'admin:m$$ql_S@_P@ssW0rd!'@$ip](#login-mssqlclient-adminmql_s_pssw0rdip-1)
admin
m$$ql_S@_P@ssW0rd!

# Common Enumeration

### [select @@version;](#select-version-1)
### [select user_name();](#select-user_name-1)
### [Get Databases: SELECT name FROM master.dbo.sysdatabases;](#get-databases-select-name-from-masterdbosysdatabases-1)
### [Use Database: USE orcharddb](#use-database-use-orcharddb-1)

-----------

### Login: mssqlclient 'admin:m$$ql_S@_P@ssW0rd!'@$ip
```
$ mssqlclient 'admin:m$$ql_S@_P@ssW0rd!'@$ip
Impacket v0.11.0 - Copyright 2023 Fortra

[*] Encryption required, switching to TLS
[*] ENVCHANGE(DATABASE): Old Value: master, New Value: master
[*] ENVCHANGE(LANGUAGE): Old Value: , New Value: us_english
[*] ENVCHANGE(PACKETSIZE): Old Value: 4096, New Value: 16192
[*] INFO(MANTIS\SQLEXPRESS): Line 1: Changed database context to 'master'.
[*] INFO(MANTIS\SQLEXPRESS): Line 1: Changed language setting to us_english.
[*] ACK: Result: 1 - Microsoft SQL Server (120 7208) 
[!] Press help for extra shell commands
SQL (admin  admin@master)>
```

### select @@version;
```
SQL (admin  admin@master)> select @@version;
--------------------------------------------------------------------------------------------------   
Microsoft SQL Server 2014 - 12.0.2000.8 (X64) 
        Feb 20 2014 20:04:26 
        Copyright (c) Microsoft Corporation
        Express Edition (64-bit) on Windows NT 6.1 <X64> (Build 7601: Service Pack 1) (Hypervisor)
```

### select user_name();
```
SQL (admin  admin@master)> select user_name();
-----   
admin
```

### Get Databases: SELECT name FROM master.dbo.sysdatabases;
```
SQL (admin  admin@master)> SELECT name FROM master.dbo.sysdatabases;
name        
---------   
master      
tempdb      
model       
msdb        
orcharddb   

SQL (admin  admin@master)>
```

### Use Database: USE orcharddb
```
SQL (admin  admin@master)> USE orcharddb
[*] ENVCHANGE(DATABASE): Old Value: master, New Value: orcharddb
[*] INFO(MANTIS\SQLEXPRESS): Line 1: Changed database context to 'orcharddb'.
SQL (admin  admin@orcharddb)>
```

### Get Table names: SELECT * FROM <databaseName>.INFORMATION_SCHEMA.TABLES;
```
SQL (admin  admin@orcharddb)> SELECT * FROM INFORMATION_SCHEMA.TABLES;
TABLE_CATALOG   TABLE_SCHEMA   TABLE_NAME                                             TABLE_TYPE   
-------------   ------------   ----------------------------------------------------   ----------   
orcharddb       dbo            blog_Orchard_Blogs_RecentBlogPostsPartRecord           b'BASE TABLE'
orcharddb       dbo            blog_Orchard_Blogs_BlogArchivesPartRecord              b'BASE TABLE'
orcharddb       dbo            blog_Orchard_Workflows_TransitionRecord                b'BASE TABLE'
[snip]
orcharddb       dbo            blog_Orchard_Taxonomies_TermsPartRecord                b'BASE TABLE'
orcharddb       dbo            blog_Orchard_MediaLibrary_MediaPartRecord              b'BASE TABLE'
orcharddb       dbo            blog_Orchard_Blogs_BlogPartArchiveRecord               b'BASE TABLE'
SQL (admin  admin@orcharddb)> 
```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```