---
title: 修改Wordpress的URL
type: post
layout: post
tags: 
- Wordpress
---
装上WordPress，有点好奇，在控制面板里修改了访问URL，导致无法访问了……郁闷……<br/><br/>解决方法如下：<br/><br/>1. 登陆phpMyAdmin，选择WordPress的数据库。<br/><br/>2. 点击”SQL”，打开SQL命令窗口，输入以下命令更改URL：<br/><br/><pre><br/>UPDATE wp_options SET option_value = replace(option_value, ‘错误的URL’, ‘新的URL’) WHERE option_name = ‘home’ OR option_name = ’siteurl’;<br/></pre>

