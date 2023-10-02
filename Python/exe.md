https://datatofish.com/executable-pyinstaller/

pip install pyinstaller

cd followed by the location where your Python script is stored

pyinstaller --onefile pythonScriptName.py

PS C:\Tools\impacket-master\examples> pyinstaller --onefile .\GetNPUsers.py
4593 INFO: PyInstaller: 5.13.0
4593 INFO: Python: 3.11.2
4593 INFO: Platform: Windows-10-10.0.19044-SP0
4593 INFO: wrote C:\Tools\impacket-master\examples\GetNPUsers.spec
4607 INFO: Extending PYTHONPATH with paths
['C:\\Tools\\impacket-master\\examples']
8373 INFO: checking Analysis
8373 INFO: Building Analysis because Analysis-00.toc is non existent
8373 INFO: Initializing module dependency graph...
9096 INFO: Caching module graph hooks...
10208 INFO: Analyzing base_library.zip ...
... snip ...
42515 INFO: Copying 0 resources to EXE
42515 INFO: Embedding manifest in EXE
42515 INFO: Updating manifest in C:\Tools\impacket-master\examples\dist\GetNPUsers.exe.notanexecutable
42545 INFO: Updating resource type 24 name 1 language 0
42545 INFO: Appending PKG archive to EXE
42561 INFO: Fixing EXE headers
44704 INFO: Building EXE from EXE-00.toc completed successfully.
PS C:\Tools\impacket-master\examples>


PS C:\Tools\impacket-master\examples> ls .\dist\


    Directory: C:\Tools\impacket-master\examples\dist


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----          1/8/2023   2:33 AM       16071938 GetNPUsers.exe


PS C:\Tools\impacket-master\examples> Get-FileHash .\dist\GetNPUsers.exe -a md5

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
MD5             8DA10A8D549BBD9974A71866AC7927CE                                       C:\Tools\impacket-master\examples\dist\GetNPUsers.exe


PS C:\Tools\impacket-master\examples> Get-FileHash .\dist\GetNPUsers.exe

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
SHA256          4F6E47464168603DF17C894D22E5F143D9DFD8A1B0A2C216FF33053C25D09F2A       C:\Tools\impacket-master\examples\dist\GetNPUsers.exe