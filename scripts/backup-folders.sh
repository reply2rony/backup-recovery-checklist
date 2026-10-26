#!/bin/bash
# Simple folder backup — SAMPLE script, for learning and testing only.
# Usage: ./backup-folders.sh /path/to/sample-source /path/to/backup-folder
# It copies the source folder into a new folder named with today's date.
# It does NOT delete anything. Test it on sample folders first.

# Stop if a command fails, so a half-finished backup is not reported as success.
set -e

# Read the two folder paths given on the command line.
SOURCE="$1"
DEST_BASE="$2"

# Check that both paths were given.
if [ -z "$SOURCE" ] || [ -z "$DEST_BASE" ]; then
  echo "Usage: $0 <source-folder> <backup-base-folder>"
  exit 1
fi

# Build a dated folder name, e.g. backup-2026-10-26.
TODAY=$(date +%F)
DEST="$DEST_BASE/backup-$TODAY"

echo "Backing up $SOURCE to $DEST ..."
# -a keeps file dates and permissions. --info=progress2 shows progress.
rsync -a --info=progress2 "$SOURCE/" "$DEST/"

echo "Backup finished: $DEST"
echo "$(date) — backup of $SOURCE finished at $DEST" >> "$DEST_BASE/backup-log.txt"
