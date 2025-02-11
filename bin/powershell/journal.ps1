$notesDir = "$HOME\notes"
$year = Get-Date -Format yyyy
$month = Get-Date -Format MM
$day = Get-Date -Format dd

$todayJournalDir = Join-Path $notesDir "journal" $year $month
$todayJournalFile = Join-Path $todayJournalDir "$day.md"

if (-not (Test-Path $todayJournalDir))
{
  New-Item -Type Directory $todayJournalDir
}

vim $todayJournalFile
