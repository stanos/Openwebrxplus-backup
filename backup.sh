

cp -r /var/lib/openwebrx/ /home/stanos/Openwebrxplus-backup/vlopenwebrx/
cp -r /etc/openwebrx/ /home/stanos/Openwebrxplus-backup/etcopenwebrx/
cd /home/satnos/Openwebrxplus-backup/
git add .
git commit -m "$(date +%F)"
git push -u origin main
