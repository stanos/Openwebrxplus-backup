#!/usr/bin/env bash

GIT='git --git-dir='$PWD'/.git'

$GIT config --global user.email "stan@sailingstanos.nl"
$GIT config --global user.name "Stanos"

cp -r /var/lib/openwebrx/* /home/stanos/Openwebrxplus-backup/vlopenwebrx/
cp -r /etc/openwebrx/* /home/stanos/Openwebrxplus-backup/etcopenwebrx/
cd -- /home/stanos/Openwebrxplus-backup/
pwd
chown stanos:stanos * -R
chmod -R ugo+rwX .
$GIT add /home/stanos/Openwebrxplus-backup/vlopenwebrx
$GIT add /home/stanos/Openwebrxplus-backup/etcopenwebrx
$GIT commit -m "$(date +%F)" 
$GIT push -u origin main
