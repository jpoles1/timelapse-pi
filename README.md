#Crontab:
* */4 * * * /etc/motion/regen_timelapse.sh > /var/motion/cron.log


#Server service

_/etc/systemd/system/timelapse_server.service_

```
[Unit]
Description=Serves timelapse files
After=network.target

[Service]
Restart=always
RestartSec=1
ExecStart=/bin/bash /etc/motion/server.sh
User=jpoles1

[Install]
WantedBy=multi-user.target
```

sudo systemctl timelapse_server enable

sudo service start timelapse_server
