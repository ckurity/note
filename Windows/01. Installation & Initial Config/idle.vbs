' cscript idle.vbs

set wsc = CreateObject("WScript.Shell")
Do
    '5 minutes
    WScript.Sleep(5*60*1000)
    wsc.SendKeys("{NUMLOCK}")
Loop