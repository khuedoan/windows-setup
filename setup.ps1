#+----------+
#| Settings |
#+----------+

# Change hostname
Rename-Computer -NewName "Precision"

# Change drive label
Set-Volume -DriveLetter C -NewFileSystemLabel "Windows"

#+----------------+
#| Update Windows |
#+----------------+

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate

#+---------+
#| Debloat |
#+---------+
# Uninstall apps
Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage
Get-AppxPackage *Microsoft.DesktopAppInstaller* | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Office.OneNote* | Remove-AppxPackage
Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage
Get-AppxPackage *Microsoft.People* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsCommunicationsApps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage
Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGamingOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage
Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage
C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall

#+-------------------+
#| Install softwares |
#+-------------------+

# Install 7-Zip
(New-Object System.Net.WebClient).DownloadFile( "https://www.7-zip.org/a/7z1900-x64.exe", "$env:TEMP\zip.exe")
Start-Process -Wait $env:TEMP\7zip.exe /S

# Install Intel Extreme Tuning Utility
(New-Object System.Net.WebClient).DownloadFile( "http://downloadmirror.intel.com/24075/eng/XTUSetup.exe", "$env:TEMP\xtu.exe")
Start-Process -Wait $env:TEMP\xtu.exe /S

# Install Steam
(New-Object System.Net.WebClient).DownloadFile( "https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe", "$env:TEMP\steam.exe")
Start-Process -Wait $env:TEMP\steam.exe /S

