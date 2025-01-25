

cp -r /var/lib/openwebrx/ /home/stanos/Openwebrxplus-backup/vlopenwebrx/
cp -r /etc/openwebrx/ /home/stanos/Openwebrxplus-backup/etcopenwebrx/
pwd
chown stanos:stanos * -R
chmod -R ugo+rwX .
su - stanos -c "git add vlopenwebrx"
su - stanos -c "git add etcopenwebrx"
su - stanos -c "git commit -m '$(date +%F)' "
su - stanos -c "git push -u origin main" 
