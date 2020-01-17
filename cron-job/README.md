# Cron Jobs

The crontab is a list of commands that you want to run on a regular schedule.
Crontab stands for “cron table” because it uses the job scheduler cron to execute tasks.

To view your crontab entries type crontab -l from your unix account.
To edit a crontab entries, use crontab -e. By default this will edit the current logged-in users crontab.
To view or edit root user cron jobs just add sudo in front of the command.
```sudo crontab -l```
```sudo crontab -e```

## Getting Started

Below instructions will help you in creating your first cron job and schedule it according to your need.
```
 |----------- minute (0 - 59)
 | |------------ hour (0 - 23)
 | | |------------ day of the month (1 - 31)
 | | | |--------------- month (1 - 12)
 | | | | |--------------- day of the week (0 - 6) (Sunday to Saturday;
 | | | | |                                   7 is also Sunday on some systems)
 | | | | |
 | | | | |
 * * * * * [user] [command]
```

**every minute**

```* * * * * /path/to/script```

**every minute as user tim**

```* * * * * tim /path/to/script```

**every hour at the top of the hour**

```0 * * * * /path/to/script```

**nightly at 11pm**

```0 23 * * * /path/to/script```

**first of the month at 3pm, every month**

```0 15 1 * * /path/to/script```

**every day at 8am, 10am, 12pm, 2pm**

```0 8,10,12,14 * * * /path/to/script```

**every half hour**

```*/30 * * * * /path/to/script```

**every tuesday at 8am**

```0 8 * * 2 /path/to/script```

**first wednesday of each month at 11pm**

```0 23 1-7 * 3 /path/to/script```

Cron special keywords
```
Keyword    Equivalent
@yearly    0 0 1 1 *
@daily     0 0 * * *
@hourly    0 * * * *
@reboot    Run at startup
```