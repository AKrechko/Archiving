Anacron Example

# cat /etc/anacrontab

# period   delay(min)   job-identifier-(name)   command
7	15	test.daily	/bin/sh /home/sathiya/backup.sh

or

@mouthly        30      backup_home     /bin/sh /usr/local/bin/run_backup.sh

Field 1 is Recurrence period: This is a numeric value that specifies the number of days.

    1 – daily
    7 – weekly
    30 – monthly
    N – This can be any numeric value. N indicates number of days

Field 3 is Job identifier: It is the name for the job’s timestamp file. It should be unique for each job. This will be available as a file under the /var/spool/anacron directory. This file will contain a single line that indicates the last time when this job was executed.

# ls -1 /var/spool/anacron/
test.daily
cron.daily
cron.monthly
cron.weekly

# cat /var/spool/anacron/test.daily
20110507

Field 4 is command: Command or shell script that needs to be executed.

Just like shell scripts, comments inside anacrontab file starts with #
