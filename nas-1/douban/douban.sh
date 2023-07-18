#!/bin/bash  

# 定义颜色
green() {
	echo -e "\033[32m\033[01m$1\033[0m"
}
red() {
	echo -e "\033[31m\033[01m$1\033[0m"
}
yellow() {
	echo -e "\033[33m\033[01m$1\033[0m"
}

# 下载文件
container_id=$(docker ps -aqf "name=01-nastools-bt") 
rm -rf nas-tools-2.9.1.tar.gz 
wget -c https://gitee.com/juway111/nastool/raw/master/nas/douban/nas-tools-2.9.1.tar.gz -O nas-tools-2.9.1.tar.gz  
tar -zxf nas-tools-2.9.1.tar.gz -C / && docker cp -a "/nas-tools" $container_id:/

yellow "*************************************"
echo "容器名称：01-nastools-bt"
echo "容器ID: $container_id"
yellow "*************************************"

if [ -d "/douban/nas-tools" ]; then
    green "恭喜natool豆瓣api已经修复，正在重启容器..."
    rm -rf douban.sh
docker restart $container_id
rm -rf nas-tools-2.9.1.tar.gz
    else
    red "解压失败，终止任务！"
    exit 1
fi