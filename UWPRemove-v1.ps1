$menu=@"
1 Simplified list of all installed UWP app packages for the current user on this PC.
2 Detailed list of all installed UWP app packages for the current user on this PC.
3 Simplified list of all installed UMP app packages for all users on this PC.
4 Detailed list of all installed UMP app packages for all users on this PC.
5 Uninstall previously-specified list of UWP apps.
Q Quit
 
Select a task by number or Q to quit
"@

Write-Host ""
Write-Host "UWP Application Information" -ForegroundColor Cyan
Write-Host ""
$r = Read-Host $menu

Switch ($r) {
"1" {
    Write-Host "Generatating simplified list of UWP apps for current user..." -ForegroundColor Green
    Sleep -seconds 2
    Get-AppxPackage -user $env:UserName | Select Name, PackageFullName
}
 
"2" {
    Write-Host "Generating detailed list of UWP apps for current user..." -ForegroundColor Green
    Sleep -seconds 2
    Get-AppxPackage -user $env:UserName
}
 
"3" {
    Write-Host "Generating simplified list of UWP apps for all users..." -ForegroundColor Green
    Sleep -seconds 2
    Get-AppxPackage -allusers | Select Name, PackageFullName
}
 
"4" {
    Write-Host "Generating detailed list of UWP apps for all users..." -ForegroundColor Green
    Sleep -seconds 2
    Get-AppxPackage -allusers
}
 
"5" {
    Write-Host "Gather list of UWP apps to uninstall..." -ForegroundColor Green
    Sleep -seconds 2
    Write-Host "Starting uninstall of UWP apps..."
    #3D Builder
    Get-AppxPackage *3dbuilder* | Remove-AppxPackage
    #Alarms and Clock
    Get-AppxPackage *windowsalarms* | Remove-AppxPackage
    #Calculator
    Get-AppxPackage *windowscalculator* | Remove-AppxPackage
    #Calendar and Mail
    Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
    #Camera
    Get-AppxPackage *windowscamera* | Remove-AppxPackage
    #Feedback Hub
    Get-AppxPackage *feedbackhub* | Remove-AppxPackage
    #Get Office
    Get-AppxPackage *officehub* | Remove-AppxPackage
    #Get Skype
    Get-AppxPackage *skypeapp* | Remove-AppxPackage
    #Get Started
    Get-AppxPackage *getstarted* | Remove-AppxPackage
    #Groove Music
    Get-AppxPackage *zunemusic* | Remove-AppxPackage
    #Maps
    Get-AppxPackage *windowsmaps* | Remove-AppxPackage
    #Microsoft Solitaire Collection
    Get-AppxPackage *solitairecollection* | Remove-AppxPackage
    #Messaging
    Get-AppxPackage *Messaging* | Remove-AppxPackage
    #Money
    Get-AppxPackage *bingfinance* | Remove-AppxPackage
    #Movies & TV
    Get-AppxPackage *zunevideo* | Remove-AppxPackage
    #News
    Get-AppxPackage *bingnews* | Remove-AppxPackage
    #OneNote
    Get-AppxPackage *onenote* | Remove-AppxPackage
    #People
    Get-AppxPackage *people* | Remove-AppxPackage
    #Phone Companion
    Get-AppxPackage *windowsphone* | Remove-AppxPackage
    #Photos
    Get-AppxPackage *photos* | Remove-AppxPackage
    #Sports
    Get-AppxPackage *bingsports* | Remove-AppxPackage
    #Sticky Notes
    Get-AppxPackage *microsoftstickynotes* | Remove-AppxPackage
    #Voice Recorder
    Get-AppxPackage *soundrecorder* | Remove-AppxPackage
    #Weather
    Get-AppxPackage *bingweather* | Remove-AppxPackage
    #Paid Wifi
    Get-AppxPackage *OneConnect* | Remove-AppxPackage
    #Contact Support
    Get-AppxPackage *contactsupport* | Remove-AppxPackage
    #Xbox App
    Get-AppxPackage *xboxapp* | Remove-AppxPackage
}
 
"Q" {
    Write-Host "Quitting..." -ForegroundColor Green
}
 
default {
    Write-Host "Invalid option." -ForegroundColor Yellow
 }
} #end switch