#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#检测是否是root账户权限
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install ltnmp"
    exit 1
fi

#进入源码下载目录
cd /usr/local/src

#清理之前的垃圾
rm-rf /usr/local/src/php56_debian75_product.sh
rm-rf /usr/local/src/php-5.6.20.tar.gz
rm-rf /usr/local/src/php-5.6.20

#下载最新版本的脚本重新安装
wget http://www.jicker.cn/down/source/php56_debian75_product.sh
sh php56_debian75_product.sh