while ($true) {
    # Call the other PowerShell script
    & "C:\Users\desmo\Downloads\PS Scripts\spotify restart\spotify_restart.ps1"

    # Wait for 30 sec 
    Start-Sleep -Seconds 30
}