<#
.SYNOPSIS
    Manager for the hosts file, made for testing websites after a migration
.DESCRIPTION
    PowerShell Version of NGST Linux hosts file manager.
.LINK
    www.github.com/ThomasKeast
#>
Clear-Host

$path = "C:\Windows\System32\drivers\etc\hosts"
$IP = Read-Host 'Please enter the IP address - '
$dubyn = "0"
$domain = Read-Host 'Please enter the domain you wish to add - '
$dubs = Read-Host 'Would you like me to add the www. record? [y/n] - '
if ($dubs -eq 'y' -Or $dubs -eq 'Y') {
    Write-Output "www. record will be added..."
    $dubb = "www.$domain"
    $dubyn = "1"
} Else {
    Write-Output "www. record will NOT be added..."
    $dubyn = "0"
}

Write-Output "Currently on the hosts file: "
$backup = [IO.File]::ReadAllText("C:\Windows\System32\drivers\etc\hosts")

if ($dubyn -eq '1') {
    $toadd = "$IP $domain $dubb"
    Write-Output "I have added the www. record for you..."
} Else {
    $toadd = "$IP $domain `n"
    Write-Output "I have not added the www. record..."
}

$comment = "#$toadd"
#Out-File -FilePath C:\Windows\System32\drivers\etc\hosts -Append -Encoding ascii -InputObject $toadd
Out-File -FilePath $path -Append -Encoding ascii -InputObject $toadd -NoClobber
Write-Output "$domain was added to the hosts file..."

$rlv = Read-Host 'Would you like to run the live window? [y/n] - '
if ($rlv -eq 'y' -Or $rlv -eq 'Y') {
    Write-Output "Running live window..."
    Start-Sleep -s 2
    [System.Diagnostics.Process]::Start("chrome.exe", "--incognito $domain")
    Write-Output "Press Enter when you are finished testing..."
    pause
    Out-File -FilePath C:\Windows\System32\drivers\etc\hosts -Encoding ascii -InputObject "$backup$comment"
    Write-Output "Last was commented out..."
    Start-Sleep 2
    Write-Output "Script has completed..."
} Else {
    Write-Output "Won't run the live window..."
    Start-Sleep 2
    Write-Output "You will need to manually comment out the host file entry..."
    Write-Output "Script has completed..."
}





