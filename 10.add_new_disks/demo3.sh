#!/bin/bash
YOUR_BUCKET_NAME="bharathdasara123"
screen -r mcs -X stuff '/save-all\n/save-off\n'
/usr/bin/gsutil cp -R /home/minecraft/world gs://${YOUR_BUCKET_NAME}-minecraft-backup/$(date "+%Y%m%d-%H%M%S")-world
screen -r mcs -X stuff '/save-on\n'
student-04-cd6766edf25d@mc-server:/home/minecraft$
