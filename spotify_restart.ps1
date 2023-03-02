

$spotify = Get-Process | Where-Object {$_.Name -eq "Spotify"}

if($spotify)
{
    Stop-Process -Name "Spotify" -Force
}

$spotifyExePath = "C:\Users\desmo\AppData\Roaming\Spotify\Spotify.exe"

$spotifyProcess = Start-Process -FilePath $spotifyExePath -ArgumentList "--minimized" -WindowStyle Hidden -PassThru

if($spotifyProcess)
{
    Write-Output "Spotify restarted at $(Get-Date)"
}
else
{
    Write-Error "Failed to start Spotify"
}