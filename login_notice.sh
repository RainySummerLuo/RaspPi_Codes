#!/bin/bash
#===========================================================
# OS Passed:    CentOS7, Raspbian(2018-11-13)
# Description:  bash登录时自动发送登录提醒
# Author:       kuretru < kuretru@gmail.com >
# Github:       https://github.com/kuretru/Script-Collection
# Version:      1.1.170725
#===========================================================

#Server酱调用密钥
key='******************************************************'

user=$(whoami)
hostname=$(hostname | sed 's/\./_/g')
ip=$(strings /var/log/lastlog | grep -o -P "(\d+\.)(\d+\.)(\d+\.)\d+")
now=$(date "+%Y.%m.%d_%H.%M.%S")

wget -q --spider https://sc.ftqq.com/${key}.send?text="Bash Login @ RaspPi"\&desp="%0a%0a IP Address: ${ip} %0a%0a User Name: ${user} %0a%0a Time: ${now}"
