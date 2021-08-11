$server = cat .\serverlist.txt
foreach ($s in $server){Get-VM $s}
foreach ($s in $server){Get-VM $s | Shutdown-VMGuest}
Start-Sleep -Seconds 40
foreach ($s in $server){Get-VM $s | Set-VM -memoryGB 8}
Start-Sleep -Seconds 40
foreach ($s in $server){Get-VM $s | Start-Vm}