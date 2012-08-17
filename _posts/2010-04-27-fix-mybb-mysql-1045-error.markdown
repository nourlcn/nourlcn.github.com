--- 
title: !binary |
  6Kej5YazbXlCQui/nuaOpU15c3Fs5pWw5o2u5bqTMTA0NemUmeivrw==

type: post
layout: post
tags: 
- Mysql
---
Database: MySQL SQL Error: 1045 - Access denied for user 'USERNAME'@'HOSTNAME' (using password: YES)<br/><br/>Query: [READ] Unable to connect to MySQL server<br/><br/> Information: This occurs when you are using MySQL and the database password is incorrect in ./inc/config.php. To fix this, open ./inc/config.php and check the entry for $config['database']['password']. If you do not know what needs to be here, contact your host provider.<br/><br/>正如myBB官方提供的那样，如果正在使用Mysql或者数据库的密码不正确，那么会出现这个错误。<br/><br/>我今天在上传了一个gregrius程序后，配置数据库的时候有些疏忽，把用户密码搞错了，并且写进了inc/config.php文件里，所以导致出现了这个错误。<br/><br/>解决方法：<br/><br/>使用FTP登录host<br/><br/>cd /html/forum/inc<br/><br/>get config.php<br/><br/>本地编辑 gedit config.php<br/><br/>将里面的PASSWORD那一行的错误密码换成正确的<br/><br/>put config.php config.php //上传文件到服务器<br/><br/>刷新页面 好了！

