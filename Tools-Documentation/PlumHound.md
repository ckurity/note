# [PlumHound](https://github.com/PlumHound/PlumHound)
Bloodhound for Blue and Purple Teams

### Installation
```
git clone https://github.com/PlumHound/PlumHound
cd PlumHound
pip install -r requirements.txt
```

### [Default](#default-1)

### [python PlumHound --easy -p <neo4j-password>](#python-plumhound---easy--p-1)
BloodHound should be up. Do not close it

### [python PlumHound.py --easy -p 1](#python-plumhoundpy---easy--p-1-1)
"1" is the password in this case

### [python PlumHound.py -x tasks/default.tasks -p 1](#python-plumhoundpy--x-tasksdefaulttasks--p-1-1)

### Default
```
$ python PlumHound.py                                                   
usage: PlumHound.py [-h] [-s SERVER] [-u USERNAME] [-p PASSWORD] [--UseEnc] [--timeout TIMEOUT]
                    (--easy | -x TASKFILE | -q QUERYSINGLE | -bp BUSIESTPATH [BUSIESTPATH ...] | -ap ANALYZEPATH [ANALYZEPATH ...])
                    [-t TITLE] [--of OUTFILE] [--op PATH] [--ox {stdout,HTML,CSV,HTMLCSV}] [--HTMLHeader HTMLHEADER]
                    [--HTMLFooter HTMLFOOTER] [--HTMLCSS HTMLCSS] [-v VERBOSE]
PlumHound.py: error: one of the arguments --easy -x/--TaskFile -q/--QuerySingle -bp/--BusiestPath -ap/--AnalyzePath is required
```

### python PlumHound --easy -p <neo4j-password>
### python PlumHound.py --easy -p 1
```
$ python PlumHound.py --easy -p 1

        PlumHound 1.5.2
        For more information: https://github.com/plumhound
        --------------------------------------
        Server: bolt://localhost:7687
        User: neo4j
        Password: *****
        Encryption: False
        Timeout: 300
        --------------------------------------
        Task: Easy
        Query Title: Domain Users
        Query Format: STDOUT
        Query Cypher: MATCH (n:User) RETURN n.name, n.displayname
        --------------------------------------
INFO    Found 1 task(s)
INFO    --------------------------------------
on 1: 
on 1: n.name                    n.displayname
      ------------------------  ---------------
      SIZZLER@HTB.LOCAL
      MRLKY@HTB.LOCAL
      KRBTGT@HTB.LOCAL
      GUEST@HTB.LOCAL
      DEFAULTACCOUNT@HTB.LOCAL
      AMANDA@HTB.LOCAL
      ADMINISTRATOR@HTB.LOCAL
      NT AUTHORITY@HTB.LOCAL
on 1: 
         Executing Tasks |██████████████████████████████████████████████████| Tasks 1 / 1  in 0.1s (702.85/s) 

        Completed 1 of 1 tasks.
```

### python PlumHound.py -x tasks/default.tasks -p 1
```
$ python PlumHound.py -x tasks/default.tasks -p 1

        PlumHound 1.5.2
        For more information: https://github.com/plumhound
        --------------------------------------
        Server: bolt://localhost:7687
        User: neo4j
        Password: *****
        Encryption: False
        Timeout: 300
        --------------------------------------
        Tasks: Task File
        TaskFile: tasks/default.tasks
        Found 75 task(s)
        --------------------------------------


on 75:  Completed Reports Archive: reports//Reports.zip
         Executing Tasks |██████████████████████████████████████████████████| Tasks 75 / 75  in 7.9s (9.38/s) 

        Completed 75 of 75 tasks.
```

### 
```
┌──(kali㉿kali)-[~/tools/PlumHound]
└─$ ls reports
AdminGroups.csv                              Domains.html                             LocalAdmin_UsersCount.html             SchemaAdmins.html
AdminGroups.html                             DomainTrusts.csv                         LocalAdmin_Users.html                  ServersInOUs.html
CertPublishers.html                          DomainTrusts.html                        OperatingSystemCount.html              Users_10YrOldPasswords.csv
Computers_admin_computers_count.html         DomainUsers.csv                          OperatingSystemUnsupported.csv         Users_10YrOldPasswords.html
Computers_admin_computers.csv                DomainUsers.html                         OperatingSystemUnsupported.html        Users_5YrOldPasswords.csv
Computers_admin_computers.html               EA_Sessions.html                         OUs_Count.html                         Users_5YrOldPasswords.html
Computers_MSSQL.csv                          EnterpriseAdmins.html                    Owned-Computers-Groups.html            Users_6MoOldPasswords.csv
Computers_MSSQL.html                         GPOCreatorOwners.html                    Owned-Computers.html                   Users_6MoOldPasswords.html
Computers_UnconstrainedDelegation.csv        GPOs.csv                                 Owned-Groups.html                      Users_Count_DirectAdminComputers.html
Computers_UnconstrainedDelegation.html       GPOs.html                                Owned-Objects-AdminTo-Direct.html      Users_Count_InDirectAdminComputers.html
Computers_UnconstrainedDelegationNonDC.csv   Groups_CanResetPasswordsCount.html       Owned-Objects.html                     Users_NeverActive_Enabled.csv
Computers_UnconstrainedDelegationNonDC.html  Groups-HighValue-members.csv             Owned-Objects-MemberOf-Direct.html     Users_NeverActive_Enabled.html
Computers_WithDescriptions.csv               Groups-HighValue-members.html            Owned-Users-Groups.html                Users_NeverExpirePasswords.csv
Computers_WithDescriptions.html              Groups_MostAdminPrivileged.html          Owned-Users.html                       Users_NeverExpirePasswords.html
Computers_With_More_Than1_Local_Admin.csv    HuntComputersWithPassInDescription.html  Permissions_Everyone.csv               Users_NoKerbReq.csv
Computers_With_More_Than1_Local_Admin.html   HuntUsersWithPassInDescription.html      Permissions_Everyone.html              Users_NoKerbReq.html
CrossDomainRelationships.html                index.html                               RDPableGroupsCount.html                UsersNotActive12mo.csv
DA_Sessions.html                             Kerberoastable_Users.html                RDPableGroups.html                     UsersNotActive12mo.html
DomainAdmins.html                            Kerberoastable_Users_MostPriv.html       Relationships-AuthenticatedUsers.html  UsersNotActive6mo.csv
DomainComputers.csv                          LapsDeploymentCount.csv                  Relationships-DomainComputers.html     UsersNotActive6mo.html
DomainComputers.html                         LapsDeploymentCount.html                 Relationships-DomainUsers.html         Users_Sessions_Count.html
DomainControllers.csv                        LapsDeploymentCount-OS.csv               Relationships-Everyone.html            Users_Sessions.csv
DomainControllers.html                       LapsDeploymentCount-OS.html              Relationships-Guests.html              Users_Sessions.html
DomainGroups.csv                             LAPSNotEnabled.html                      Relationships-PreW2KCA.html            Users_userpassword.csv
DomainGroups.html                            LocalAdmin_Groups_Count.html             Relationships-Users.html               Users_userpassword.html
Domains.csv                                  LocalAdmin_Groups.html                   Reports.zip                            Workstations_RDP.html
```

### 
```

```

### 
```

```