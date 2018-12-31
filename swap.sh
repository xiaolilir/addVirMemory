#!/bin/bash
#增加512的swap空间
#blog:www.xkjs.org
dd if=/dev/zero of=/swapfile bs=1MB count=512

#制作一个swap文件
mkswap /swapfile

#启动swap分区
swapon /swapfile

#添加开机自启
echo '/swapfile               none                    swap    defaults        0 0'   >>  /etc/fstab
