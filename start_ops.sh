#! /bin/bash

echo never > /sys/kernel/mm/transparent_hugepage/enabled
echo 0 > /proc/sys/vm/zone_reclaim_mode

docker rm -f ops-adb ops-bdb ops-app

docker run --name ops-adb -d \
-p 27017:27017 \
dhub.c2.croc.ru/igor_vzyukov/ops-adb

docker run --name ops-bdb -d \
-p 27018:27018 \
dhub.c2.croc.ru/igor_vzyukov/ops-bdb

docker run --name ops-app -d \
--link ops-adb --link ops-bdb \
-v /datadomain/backups/c2.mongo/:/data/backupDaemon \
-p 8080:8080 \
dhub.c2.croc.ru/igor_vzyukov/ops-app

docker logs -f ops-app
