#!/bin/bash

# crontab -e  
# add fileName to Cron list (ex. 1 */2 * * * /data/mack/github/linux_autoGreen.sh)
# 1 */2 * * * /data/mack/linux_autoGreen.sh

cd /data/mack/github/AutoGreen/
echo "🕶️Last updated: $(TZ=Asia/Singapore date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
git add README.md
git commit -m "A commit a day keeps the girlfriend away."
git push -u origin master
echo I'M Stronger..


