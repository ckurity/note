
https://www.commandline.ninja/get-aduser-syntax-and-examples/

#### Getting All users from Active Directory using the -filter property

get-aduser –filter * | select name | sort-object –property name | more

#### Using -filter to find account matches

get-aduser -filter {Surname -like "stanley"} -prop DisplayName | select DisplayName, GivenName, Surname, SamAccountName

#### Using -filter to find address matches

#### 
#### 
#### 
#### 
#### 
#### 
#### 
#### 