# Simple folder backup — SAMPLE script, for learning and testing only.
# Usage: .\backup-folders.ps1 -Source "C:\SampleSource" -BackupBase "D:\SampleBackups"
# It copies the source folder into a new folder named with today's date.
# It does NOT delete anything. Test it on sample folders first.

param(
    [string]$Source,
    [string]$BackupBase
)

# Check that both paths were given.
if (-not $Source -or -not $BackupBase) {
    Write-Host "Usage: .\backup-folders.ps1 -Source <source-folder> -BackupBase <backup-base-folder>"
    exit 1
}

# Build a dated folder name, e.g. backup-2026-10-26.
$today = Get-Date -Format "yyyy-MM-dd"
$dest = Join-Path $BackupBase "backup-$today"

Write-Host "Backing up $Source to $dest ..."
Copy-Item -Path $Source -Destination $dest -Recurse -Force

Write-Host "Backup finished: $dest"
Add-Content -Path (Join-Path $BackupBase "backup-log.txt") -Value "$(Get-Date) — backup of $Source finished at $dest"
