--- 
title: 解决报错"Your intltool is too old"
type: post
layout: post
tags: 
---
<pre>显示<br/>"Your intltool is too old.You need intltool 0.35.0 or later"</pre><br/><pre>解决如下 :</pre><br/><pre><br/>wget  http://ftp.gnome.org/pub/gnome/sources/intltool/0.40/intltool-0.40.6.tar.gz<br/>tar  zxvf intltool-0.40.6.tar.gz<br/>cd intltool-0.40.6<br/>./configure<br/>make  && make install></pre>
