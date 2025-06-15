# sams-nextcloud-aio-backup
My nextcloud AIO backup script. Runs via cron job to backup my Nextcloud and update it every month. Schedule of backups are in the script. After setting schedule, do a cronjob such as:

```
0 0 * * * /home/sparky/backup-nextcloud.sh &
```

To do a daily check to see if it's the next month. If it is, it'll backup Nextcloud AIO. If it's not, it'll continue.
