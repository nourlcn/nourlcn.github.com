--- 
title: !binary |
  5LuOd29yZHByZXNz5pCs5a625YiwYmxvZ2dlcueahOS4pOenjeaWueazlQ==

type: post
layout: post
tags: 
- Blogger
- Wordpress
---
  Blogger搬家到Wordpress的教程很多，如何从Wordpress搬家到blogger呢？本文提供两种方法：<br /><ul><li>方法1</li></ul>  方法来源：<a href="http://markmail.org/message/ckzccxdcpint2ae3%20">http://markmail.org/message/ckzccxdcpint2ae3 </a><br />    1. 下载Python语言实现的脚本：<a href="http://yichao.zhang.googlepages.com/wordpress2blogger.py">http://yichao.zhang.googlepages.com/wordpress2blogger.py</a><br />    2. 在wordpress2blogger.py文件中先设置一下几个参数<br /><br />#配置博客用户名、密码、xmlrpc<br />wp_username = '博客用户名'<br /><br />wp_passwd = 'mypwd'<br />wp_url = 'http://你博客的地址/xmlrpc.php'<br />#配置blogger 的email、passwd、blogid<br /># blogid is in your blogspot Dashboard url, for example:<br /># http://www2.blogger.com/posts.g?blogID=18083698, "18083698" is your blogid.<br />blogger_email = 'blogger 关联的gmail邮箱'<br />blogger_passwd = 'blogger密码'<br />blogger_blogid = 'blogger id'  <br />#导入多少篇文章<br />r wp_recent_posts_num = 5  <br /># set debug mode = True if you want to get debug info DEBUG = True<br />    3. 运行该脚本  python wordpress2blogger.py<br />    4. 稍等片刻，OK！<br /><br /><ul><li>方法2</li></ul>  本博客在搬家的过程中，使用的是方法2，步骤如下：<br />    1. wp后台到处xml文件<br />    2. 在<a href="http://wordpress2blogger.appspot.com/%20">http://wordpress2blogger.appspot.com/ </a>转换xml文件，去掉不兼容的tag，转换成blogger可读的xml格式<br />    3. 登录blogger后台，设置，导入博客，选择导出的xml文件，即可！<br /><br />但方法2有个限制，wp导出的xml文件，如果大于1M的话，通过GAE上的wp2blogger应用转换的时候不成功，须下载该转换程序，在本地部署后自行转换，下载地址：<a href="http://code.google.com/p/google-blog-converters-appengine/">http://code.google.com/p/google-blog-converters-appengine/</a><br /><br />  两种方法介绍完毕！祝blogger开心！<br /><br />本文地址：<a href="http://nourlcn.ownlinux.net/2011/09/how-to-move-blog-from-wordpress-to.html">http://nourlcn.ownlinux.net/2011/09/how-to-move-blog-from-wordpress-to.html</a><br /><ul></ul><ul></ul>

