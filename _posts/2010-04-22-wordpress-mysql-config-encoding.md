---
title:  wordpress mysql config encoding
type: post
layout: post
tags: 
- Host
- Wordpress
---
打开wp-config.php文件<br/>查找如下代码：<br/>define(’DB_CHARSET’, ‘utf8′);<br/>删掉uft8<br/>define(’DB_CHARSET’, ”);

