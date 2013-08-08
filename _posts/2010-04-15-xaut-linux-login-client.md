---
title:  xaut linux login client
type: post
layout: post
tags: 
- XAUT
---
第一步: 下载客戶端<br/><br/>地址 http://code.google.com/p/mentohust/downloads/list<br/><br/>我用的不是锐捷官方的客戶端,官方的我试了两个版本都不行<br/><br/>第二步:安装  运行<br/><pre><br/>sudo dpkg -i mentohust_0.3.4-1_i386.deb<br/><br/>sudo mentohust<br/></pre><br/><br/>注意<br/><br/>1.选择 锐捷私有认证<br/><br/>2.选择DHCP方式 0(不使用) 1(二次认证) 2(认证后) 3(认证前)        选择3<br/><br/>3.如果提示不支持的客戶端,请修改 /etc/mentohust.conf  里面版本号为 4.12 因为学校windows下的客戶端是 4.12版<br/><br/>OK!

