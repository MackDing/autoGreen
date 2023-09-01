#!/bin/bash
# git remote add origin https://github.com/MackDing/AutoGreen.git
# crontab -e  
# add fileName to Cron list (ex. 12 */1 * * * /data/mack/github/autoGreen/linux_autoGreen.sh)
# 12 */1 * * * /data/mack/github/autoGreen/linux_autoGreen.sh

cd "$(dirname "$0")"
git remote set-url origin https://${{ github.actor }}:${{ secrets.GITHUB_TOKEN }}@github.com/${{ github.repository }}
git pull --rebase
echo "## AutoGreen" > README.md
echo "🕶️Last updated: $(TZ=Asia/Singapore date '+%Y-%m-%d %H:%M:%S %Z')" > README.md
git add README.md
git commit -m "A commit a day keeps the girlfriend away."
git push



