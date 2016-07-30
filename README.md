# openvpn_autosignin
这是一个ipv6 openvpn的连接脚本,把路径加到path中,然后设置计划任务.

- sudo crontab -e
- 添加 * */2 * * * connect2ipv6.sh
- sudo service cron restart

含义是,每隔1小时,自动执行脚本



