#!/bin/bash

# crontab -e  
# add fileName to Cron list (ex. 1 */2 * * * /data/mack/github/autoGreen/linux_autoGreen.sh)
# 1 */2 * * * /data/mack/github/autoGreen/linux_autoGreen.sh

cd /data/mack/github/autoGreen/
echo "🕶️Last updated: $(TZ=Asia/Singapore date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
git add README.md
git commit -m "A commit a day keeps the girlfriend away."
# git remote add origin https://github.com/MackDing/AutoGreen.git
git push origin master
echo I'M Stronger...

