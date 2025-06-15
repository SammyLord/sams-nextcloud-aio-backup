#!/bin/bash
echo "[Sams Nextcloud AIO Backup Solution]"
stamp_file="$PWD/sams-nextcloud-aio-backup.timestamp"
now=$(date +%s)

# If timestamp file doesn't exist, run the job and create it
if [ ! -f "$stamp_file" ]; then
    echo "Timestamp not found. Running job, creating file."
    docker exec -it --env DAILY_BACKUP=1 --env AUTOMATIC_UPDATES=1 nextcloud-aio-mastercontainer /daily-backup.sh
    echo $now > "$stamp_file"
    exit 0
fi

last_run=$(cat "$stamp_file")
diff=$(( (now - last_run) / 86400 ))

if [ "$diff" -ge 31 ]; then
    echo "Timestamp found and its time to backup."
    docker exec -it --env DAILY_BACKUP=1 --env AUTOMATIC_UPDATES=1 nextcloud-aio-mastercontainer /daily-backup.sh
    echo $now > "$stamp_file"
    exit 0
fi

echo "Its not time to backup yet. Exiting...."
exit 0
