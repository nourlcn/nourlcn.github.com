---
title:  Wordpress Mysql配置文件编码
type: post
layout: post
tags: 
- MySQL
- Wordpress
---
打开wp-config.php文件<br/>查找如下代码：<br/>define(’DB_CHARSET’, ‘utf8′);<br/>删掉uft8<br/>define(’DB_CHARSET’, ”);

