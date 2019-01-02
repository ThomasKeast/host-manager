<#
.SYNOPSIS
    Manager for the hosts file, made for testing websites after a migration
.DESCRIPTION
    PowerShell Version of NGST Linux hosts file manager.
.LINK
    www.github.com/ThomasKeast
#>
Clear-Host

$IP = Read-Host 'Please enter the IP address - '
$dubyn = "0"
$domain = Read-Host 'Please enter the domain you wish to add - '
$dubs = Read-Host 'Would you like me to add the www. record? [y/n] - '
if ($dubs -eq 'y' -Or $dubs -eq 'Y') {
    echo "www. record will be added..."
    $dubb = "www.$domain"
    $dubyn = "1"
} Else {
    echo "www. record will NOT be added..."
    $dubyn = "0"
}

Write-Output "Currently on the hosts file: "

$backup = [IO.File]::ReadAllText("C:\Windows\System32\drivers\etc\hosts")

pause





