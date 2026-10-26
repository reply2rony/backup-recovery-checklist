# Automated Backup and Recovery Checklist

A checklist and two small scripts for backing up a folder and proving the backup can be restored. A backup that has never been restore-tested is not a backup.

## What is in here
- `backup-checklist.md` — the weekly and monthly checklist.
- `scripts/backup-folders.sh` — Bash version (Linux/macOS). Copies a source folder to a dated backup folder and writes a log line.
- `scripts/backup-folders.ps1` — PowerShell version (Windows). Same idea, using Copy-Item.
- `restore-test-log-template.csv` — record every restore test: date, what was restored, and whether it worked.

## Safety rules
- Test these scripts on a SAMPLE folder first, never on a live company folder.
- Never put passwords, real server names, or real user data in this repository.
- A backup on the same disk as the original is not a real backup. Keep a second copy somewhere else.
