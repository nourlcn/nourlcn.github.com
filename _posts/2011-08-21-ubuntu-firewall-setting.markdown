--- 
title: !binary |
  VWJ1bnR1IGZpcmV3YWxs566A5Y2V6K6+572u

type: post
layout: post
tags: 
- Linux
- Ubuntu
---

<br />Ubuntu系统默认防火墙ufw简单配置方法如下：<br />1.安装<br /><blockquote>sudo apt-get install ufw</blockquote>2.启用<br /><blockquote>sudo ufw enable<br />sudo ufw default deny<br />开启防火墙，随系统启动，关闭所有外部对本机的访问，本机访问外部</blockquote>3.开启/禁用<br /><blockquote>sudo ufw allow|deny [service]<br />打开或关闭某个端口：</blockquote><blockquote>sudo ufw allow smtp 允许所有的外部IP访问本机的25/tcp (smtp)端口<br />sudo ufw allow 22/tcp 允许所有的外部IP访问本机的22/tcp (ssh)端口<br />sudo ufw allow 53 允许外部访问53端口(tcp/udp)<br />sudo ufw allow from 192.168.1.100 允许此IP访问所有的本机端口<br />sudo ufw allow proto udp 192.168.0.1 port 53 to 192.168.0.2 port 53<br />sudo ufw deny smtp 禁止外部访问smtp服务<br />sudo ufw delete allow smtp 删除上面建立的某条规则</blockquote>4.查看状态<br /><blockquote>sudo ufw status</blockquote><blockquote>一般用户，只需如下设置：</blockquote><blockquote>sudo apt-get install ufw<br />sudo ufw enable<br />sudo ufw default deny</blockquote>
