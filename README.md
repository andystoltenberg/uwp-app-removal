# uwp-app-removal

A PowerShell tool that takes inventory of installed Universal Windows Platform (UWP) applications and provides an option to delete those apps. Windows 10 comes with many preinstalled (built-in) UWP apps, including some that don't have an obvious means of removing. My goal was to create a PowerShell tool that would allow me to catalog all UWP apps and remove them one-by-one or en masse, based on menu option choices.

This was created as a proof-of-concept tool as well as a PowerShell learning exercise. There are two versions of this tool that have been included in this repository. Each attempt utilizes different PowerShell code but both are attempts at reaching the same goal. Both versions are in varying states of completeness and may not work. I have encountered some issues with the tool that have yet to be resolved, so please consider this a work in progress.

Please ensure you have the appropriate PowerShell execution policy set to run this script locally. For more information on PowerShell execution policies, use: Get-Help Set-ExecutionPolicy -Full

Once this tool is executed, you will be presented with a menu of options to choose from to perform specific UWP application-related actions.
