$shell = New-Object -ComObject WScript.Shell
$sc = $shell.CreateShortcut('C:\Users\st4rf\Desktop\TwinScale.lnk')
$sc.TargetPath = 'C:\Users\st4rf\Desktop\Twinscale\start-dashboard.bat'
$sc.WorkingDirectory = 'C:\Users\st4rf\Desktop\Twinscale'
$sc.WindowStyle = 1
$sc.Description = 'Start TwinScale Dashboard'
$ico = 'C:\Users\st4rf\Desktop\Twinscale\public\favicon.ico'
if (Test-Path $ico) { $sc.IconLocation = $ico }
$sc.Save()
Write-Host 'Shortcut created: C:\Users\st4rf\Desktop\TwinScale.lnk'
