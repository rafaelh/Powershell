#::#######################################################################
#:: Extra settings commented out but worth considering
#::#######################################################################
#::
#:: Uninstall common extra apps found on a lot of Win10 installs
#:: https://docs.microsoft.com/en-us/windows/application-management/apps-in-windows-10
#:: PowerShell command to reinstall all pre-installed apps below
#:: Get-AppxPackage -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
# 
Get-AppxPackage *Microsoft.BingWeather* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.DesktopAppInstaller* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.GetHelp* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Getstarted* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Messaging* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Microsoft3DViewer* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftOfficeHub* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftStickyNotes* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.OneConnect* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Print3D* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Wallet* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsAlarms* -AllUsers | Remove-AppxPackage
Get-AppxPackage *microsoft.windowscommunicationsapps* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedbackHub* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsMaps* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Xbox.TCUI* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxApp* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGameOverlay* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGamingOverlay* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxIdentityProvider* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneMusic* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.WindowsFeedback* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Windows.ContactSupport* -AllUsers | Remove-AppxPackage
Get-AppxPackage *PandoraMedia* -AllUsers | Remove-AppxPackage
Get-AppxPackage *AdobeSystemIncorporated. AdobePhotoshop* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Duolingo* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingNews* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Office.Sway* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Advertising.Xaml* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.Services.Store.Engagement* -AllUsers | Remove-AppxPackage
Get-AppxPackage *ActiproSoftware* -AllUsers | Remove-AppxPackage
Get-AppxPackage *EclipseManager* -AllUsers | Remove-AppxPackage
Get-AppxPackage *SpotifyAB.SpotifyMusic* -AllUsers | Remove-AppxPackage
Get-AppxPackage *king.com.* -AllUsers | Remove-AppxPackage
Get-AppxPackage *Microsoft.NET.Native.Framework.1.* -AllUsers | Remove-AppxPackage
# Need to add Microsoft news, Spotify, Xbox (beta) to autoremove list

#:: Removed Provisioned Apps
#:: This will prevent these apps from being reinstalled on new user first logon
#:: Obviously I manually chose this list. If you truly want to nuke all the provisioned apps, you can use the below commented command in PowerShell
#:: Get-AppXProvisionedPackage -Online | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.BingWeather'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.GetHelp'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.Getstarted'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.MicrosoftOfficeHub'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.MicrosoftSolitaireCollection'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.MicrosoftStickyNotes'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.MixedReality.Portal'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.SkypeApp'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.WindowsAlarms'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'microsoft.windowscommunicationsapps'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.WindowsFeedbackHub'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.WindowsMaps'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.XboxApp'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.XboxTCUI'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.XboxGameOverlay'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.XboxGamingOverlay'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.XboxIdentityProvider'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.YourPhone'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.ZuneMusic'} | Remove-AppxProvisionedPackage -Online
Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -eq 'Microsoft.ZuneVideo'} | Remove-AppxProvisionedPackage -Online
