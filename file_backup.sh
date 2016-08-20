root@catatumbo:~/script# ls
respaldo_catatumbo.sh
root@catatumbo:~/script# cat respaldo_catatumbo.sh 
#!/bin/bash
tar cvzf /root/Respaldos/respal_cata_`date +%d`.tar.gz /usr/share/nginx/www/*
root@catatumbo:~/script# crontab -l
# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   commando
MAILTO=alejo.vazquez@gmail.com
0 2 * * *  /root/script/respaldo_catatumbo.sh
10 2 * * * scp /root/Respaldos/* <user>@<backupserver>:/home/sysadmin/Descargas/Respaldos/
20 2 * * * rm -rf /root/Respaldos/*
