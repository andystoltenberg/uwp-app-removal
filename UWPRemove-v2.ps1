function Show-Menu
 {
      param (
            [string]$Title = 'UWP Application Information'
      )
      cls
      Write-Host "================ $Title ================"
      Write-Host ""
      Write-Host "1: Press '1' for a simplified list of all installed UWP app packages for the current user on this PC."
      Write-Host "2: Press '2' for a detailed list of all installed UWP app packages for the current user on this PC."
      Write-Host "3: Press '3' for a simplified list of all installed UMP app packages for all users on this PC."
      Write-Host "4: Press '4' for a detailed list of all installed UMP app packages for all users on this PC."
      Write-Host "Q: Press 'Q' to quit."
      Write-Host ""
 }

do
{
      Show-Menu
      $input = Read-Host "Please make a selection"
      switch ($input)
      {
            '1' {
                 cls  
                 Get-AppxPackage -user $env:UserName | Select Name, PackageFullName
            } '2' {
                 cls 
                 Get-AppxPackage -user $env:UserName
            } '3' {
                 cls
                 Get-AppxPackage -allusers | Select Name, PackageFullName
            } '4' {
                 cls
                 Get-AppxPackage -allusers
            } 'q' {
                 return
            }
      }
      pause
 }
 until ($input -eq 'q')