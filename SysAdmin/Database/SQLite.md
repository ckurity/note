# SQLite

- [ls -lh Audit.db](#ls--lh-auditdb)
- [file Audit.db](#file-auditdb)
- [sqlite3 Audit.db](#sqlite3-auditdb)
- [sqlite3 Audit.db .dump](#sqlite3-auditdb-dump)

-------------------------------------------

### ls -lh Audit.db
```sh
$ ls -lh Cascade/Shares/Audit/DB/Audit.db
-rw-r--r-- 1 kali kali 24K Sep 21 21:47 Cascade/Shares/Audit/DB/Audit.db
```

### file Audit.db
```sh
$ file Cascade/Shares/Audit/DB/Audit.db
Cascade/Shares/Audit/DB/Audit.db: SQLite 3.x database, last written using SQLite version 3027002, file counter 60, database pages 6, 1st free page 6, free pages 1, cookie 0x4b, schema 4, UTF-8, version-valid-for 60
```

### sqlite3 Audit.db
```sh
$ sqlite3 Cascade/Shares/Audit/DB/Audit.db
SQLite version 3.42.0 2023-05-16 12:36:15
Enter ".help" for usage hints.
sqlite> 
sqlite> .exit
```

### sqlite3 Audit.db .dump
```sql
$ sqlite3 Cascade/Shares/Audit/DB/Audit.db .dump
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Ldap" (
        "Id"    INTEGER PRIMARY KEY AUTOINCREMENT,
        "uname" TEXT,
        "pwd"   TEXT,
        "domain"        TEXT
);
INSERT INTO Ldap VALUES(1,'ArkSvc','BQO5l5Kj9MdErXx6Q6AGOw==','cascade.local');
CREATE TABLE IF NOT EXISTS "Misc" (
        "Id"    INTEGER PRIMARY KEY AUTOINCREMENT,
        "Ext1"  TEXT,
        "Ext2"  TEXT
);
CREATE TABLE IF NOT EXISTS "DeletedUserAudit" (
        "Id"    INTEGER PRIMARY KEY AUTOINCREMENT,
        "Username"      TEXT,
        "Name"  TEXT,
        "DistinguishedName"     TEXT
);
INSERT INTO DeletedUserAudit VALUES(6,'test',replace('Test\nDEL:ab073fb7-6d91-4fd1-b877-817b9e1b0e6d','\n',char(10)),'CN=Test\0ADEL:ab073fb7-6d91-4fd1-b877-817b9e1b0e6d,CN=Deleted Objects,DC=cascade,DC=local');
INSERT INTO DeletedUserAudit VALUES(7,'deleted',replace('deleted guy\nDEL:8cfe6d14-caba-4ec0-9d3e-28468d12deef','\n',char(10)),'CN=deleted guy\0ADEL:8cfe6d14-caba-4ec0-9d3e-28468d12deef,CN=Deleted Objects,DC=cascade,DC=local');
INSERT INTO DeletedUserAudit VALUES(9,'TempAdmin',replace('TempAdmin\nDEL:5ea231a1-5bb4-4917-b07a-75a57f4c188a','\n',char(10)),'CN=TempAdmin\0ADEL:5ea231a1-5bb4-4917-b07a-75a57f4c188a,CN=Deleted Objects,DC=cascade,DC=local');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('Ldap',2);
INSERT INTO sqlite_sequence VALUES('DeletedUserAudit',10);
COMMIT;
```

### 
```sh
$ base64 -d <<< 'BQO5l5Kj9MdErXx6Q6AGOw=='
������D�|zC�;
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