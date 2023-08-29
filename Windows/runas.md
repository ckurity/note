http://www.pseale.com/pretend-youre-on-the-domain-with-runas-netonly

runas /netonly /user:REALDOMAIN\YOURDOMAINUSERNAME cmd

runas /netonly /user:htb.local\svc-alfresco:s3rvice cmd

### KO
C:\Users\user\Downloads\PingCastle_3.1.0.1>runas /netonly /user:htb.local\svc-alfresco:s3rvice cmd
Enter the password for htb.local\svc-alfresco:s3rvice:
RUNAS ERROR: Unable to acquire user password

### OK
C:\Users\user\Downloads\PingCastle_3.1.0.1>runas /netonly /user:htb.local\svc-alfresco cmd
Enter the password for htb.local\svc-alfresco: s3rvice
Attempting to start cmd as user "htb.local\svc-alfresco" ...