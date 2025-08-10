#!/bin/bash

while true; do
    # Sync CentOS 7
    # mkdir -p /mirror/centos
    # rsync -avSHP --delete rsync://mirror.liquidtelecom.com/centos/7/ /mirror/centos/7/

    # Sync Rocky Linux 8
    mkdir -p /mirror/rocky
    rsync -avSHP --delete rsync://mirror.netzwerge.de/rocky-linux/8/ /mirror/rocky/8/

    # Sync Rocky Linux 9
    rsync -avSHP --delete rsync://mirror.netzwerge.de/rocky-linux/9/ /mirror/rocky/9/

    # Sync Rocky Linux 10
    rsync -avSHP --delete rsync://mirror.netzwerge.de/rocky-linux/10/ /mirror/rocky/10/


    # Add any other sync commands needed here

    echo "Sync completed. Waiting for 6 hours before the next sync."
    
    # Wait for 6 hours (6 hours * 60 minutes * 60 seconds)
    sleep 21600
done

