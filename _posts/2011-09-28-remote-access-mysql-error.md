--- 
title: 远程访问MySQL提示出错
type: post
layout: post
tags: 
- Mysql
---
  ubuntu上安装mysql5.1作为server,windows上写python程序,访问server中的数据库,最初提示:<br /><span style="color: blue;">"OperationalError: (2003, "Can't connect to MySQL server on '192.168.3.226' (10061)")"</span><br /><br />  而在server中测试连接是没有问题的,猜测mysql bind地址,只能localhost访问,修改etc/mysql配置文件my.cnf,将bind 127行注释掉.<br /><br />  测试,再次测试,提示:<br /><span style="background-color: white;"><span style="color: blue;">"OperationalError: (1130, "Host '192.168.3.237' is not allowed to connect to this MySQL server")"</span></span><br /><br />  原来是mysql库user表中的user对应的host值为localhost,不能远程访问,更改如下:<br /><br /><span style="background-color: white; line-height: 18px; white-space: pre;"><span style="font-family: 'Courier New', monospace;"><span style="color: blue;">use mysql;</span></span></span><br /><span style="background-color: white; color: blue; font-family: 'Courier New', monospace; line-height: 18px; white-space: pre;">select host,user,password from user;</span><br /><span style="background-color: white; color: blue; font-family: 'Courier New', monospace; line-height: 18px; white-space: pre;">update user set host ='%' where host='localhost' and user='root';</span><br /><span style="font-family: 'Courier New', monospace;"><span style="line-height: 18px; white-space: pre;"><br /></span></span>
