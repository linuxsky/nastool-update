## 一键安装docker脚本
```
wget -O start.sh https://gitee.com/juway111/nastool/raw/master/bash_start.sh && bash start.sh
```
## 套件版本spk下载
```
bash <(curl -s https://gitee.com/juway111/nastool/raw/master/01_spk_download.sh)
```
## docker文件下载解压
```
bash <(curl -s https://gitee.com/juway111/nastool/raw/master/02_tar_docker.sh)
```
## 硬件解码：ffmpeg文件下载解压 
```
bash <(curl -s https://gitee.com/juway111/nastool/raw/master/nas/02_ffmpeg.sh)
```

# 一些问题的解决方案
1. 群辉无法使用wget的情况
```
##卸载原有wget
ipkg remove wget

##安装支持https的wget
ipkg install wget-ssl
```