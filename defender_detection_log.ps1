# Set-ExecutionPolicy -ExecutionPolicy Bypass
# Definiere die ID des Ereignisses, das du überprüfen möchtest.
# Die ID 1116 steht für "Malware oder anderes potenziell unerwünschtes Programm wurde blockiert"
$eventID = 1116

# Wähle den Zeitrahmen, in dem du die Ereignisse überprüfen möchtest
$startTime = (Get-Date).AddHours(-100)  # Die letzten 24 Stunden -24
$endTime = Get-Date

# Filtere die Ereignisprotokolle basierend auf der Ereignis-ID und dem Zeitrahmen
$events = Get-WinEvent -FilterHashtable @{
    LogName = 'Microsoft-Windows-Windows Defender/Operational';
    Id = $eventID;
    StartTime = $startTime;
    EndTime = $endTime
}

# Überprüfe, ob Ereignisse gefunden wurden
if ($events.Count -gt 0) {
    Write-Host "Defender hat Aktionen blockiert:"
    $events | ForEach-Object {
        Write-Host "Zeit: $($_.TimeCreated)"
        Write-Host "Beschreibung: $($_.Message)"
        Write-Host "---------------------------------"
    }
} else {
    Write-Host "Keine blockierten Aktionen in den letzten 24 Stunden gefunden."
}
