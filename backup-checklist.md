# Backup Checklist — Weekly
- [ ] Backup job ran without errors (check the log, do not assume).
- [ ] Backup size looks normal (not 0 KB, not suddenly half the usual size).
- [ ] Backup is stored in a second location, not only on the same disk.
- [ ] Old backups are kept to the retention rule agreed with the manager. [NEEDS INPUT: retention rule, e.g. "4 weekly + 12 monthly"]

# Restore Test — Monthly
- [ ] Pick one file or folder at random from the backup.
- [ ] Restore it to a TEST folder (never overwrite the live folder).
- [ ] Open the restored file and confirm it is complete and readable.
- [ ] Record the test in restore-test-log-template.csv with the date and result.
- [ ] If a restore fails, report it the same day and do not wait for the next test.
