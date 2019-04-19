#!/bin/bash
#===========================================================
# OS Passed:    CentOS7, Raspbian(2018-11-13)
# Description:  bash登录时自动发送登录提醒
# Author:       kuretru < kuretru@gmail.com >
# Github:       https://github.com/kuretru/Script-Collection
# Version:      1.1.170725
#===========================================================

#Server酱调用密钥
key='------------------------------------------------------'

user=$(whoami)
hostname=$(hostname | sed 's/\./_/g')
ip=$(strings /var/log/lastlog | grep -o -P "(\d+\.)(\d+\.)(\d+\.)\d+")
domain=$(strings /var/log/lastlog | grep -o -P "(\d+\.)(\d+\.)(\d+\.)")
now=$(date "+%Y.%m.%d_%H%M%S")

if ["$ip"="192.168.123.127"]
then
    wget -q --spider https://sc.ftqq.com/${key}.send?text="!RemoteRootLogin! @ RaspPi"\&desp="%0a%0a Via: RainySummer.zicp.vip %0a%0a Time: ${now}"
elif ["$ip"="192.168.123.160"]
then
    wget -q --spider https://sc.ftqq.com/${key}.send?text="!TerminalLogin! @ RaspPi"\&desp="%0a%0a IPAddr.: ${ip} %0a%0a Time: ${now}"
else
    wget -q --spider https://sc.ftqq.com/${key}.send?text="!UnauthRootLogin! @ RaspPi"\&desp="%0a%0a IPAddr.: ${ip} %0a%0a$ Time: ${now}"
fi