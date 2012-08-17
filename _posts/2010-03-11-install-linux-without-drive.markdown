--- 
title: !binary |
  5peg5YWJ6amxV2luZG93c+S4i+WuieijhUxpbnV4

type: post
layout: post
tags: 
- Win
---
<p><span style="font-family: Verdana; color: rgb(95, 55, 39); line-height: 20px;"><span><span style="font-size: medium;">条件：电脑无光驱或者无安装盘时，可以下载Linux ISO镜像文件（DVD CD皆可），下载grub</span></span></span></p><p><span style="font-family: Verdana; color: rgb(95, 55, 39); line-height: 20px;"><span><span style="font-size: medium;">步骤：以安装Centos为例<br /></span></span></span></p><span style="font-family: Verdana; color: rgb(95, 55, 39); line-height: 20px;"><span style="font-size: medium;">1.在Windows XP下删除最后一个分区。<br style="line-height: 0px;" />2.把下载的Linux镜像文件放在FAT格式的任何一个盘。<br style="line-height: 0px;" />3.解压第一个镜像中isolinux文件夹到C:；解压grub到C:。<br style="line-height: 0px;" />4.打开c:boot.ini在文件最后加入 c:grldr="CentOS"。<br style="line-height: 0px;" />5.修改c:menu.lst内容入下：<br style="line-height: 0px;" />           title CentOS<br style="line-height: 0px;" />           kernel(hd0,0)/isolinux/vmlinuz<br style="line-height: 0px;" />           initrd(hd0,0)/isolinux/initrd.img<br style="line-height: 0px;" />重启系统后在启动项中选择CentOS项则进入安装程序，建议首次安装选择简体中文，这样会比英文少很多麻烦。在系统分区的地方要注意一定要选择“未分区磁盘空间安装”不要把所有磁盘空间格式化！！！</span></span>

