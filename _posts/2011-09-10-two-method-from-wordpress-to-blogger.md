--- 
title: 从Wordpress导入到Blogger的两种方式
type: post
layout: post
tags: 
- Blogger
- Wordpress
---

Blogger搬家到Wordpress的教程很多，如何从Wordpress搬家到blogger呢？本文提供两种方法：

###方法1

方法来源：[http://markmail.org/message/ckzccxdcpint2ae3](http://markmail.org/message/ckzccxdcpint2ae3) 

1. 下载Python语言实现的脚本:[http://yichao.zhang.googlepages.com/wordpress2blogger.py](http://yichao.zhang.googlepages.com/wordpress2blogger.py)
2. 在wordpress2blogger.py文件中先设置一下几个参数

		#配置博客用户名、密码、xmlrpc
		wp_username = '博客用户名'
		wp_passwd = 'mypwd'
		wp_url = 'http://你博客的地址/xmlrpc.php'
		#配置blogger 的email、passwd、blogid
		# blogid is in your blogspot Dashboard url, for example:
		# http://www2.blogger.com/posts.g?blogID=18083698, "18083698" is your blogid.
		blogger_email = 'blogger 关联的gmail邮箱'
		blogger_passwd = 'blogger密码'
		blogger_blogid = 'blogger id' 
		#导入多少篇文章
		r wp_recent_posts_num = 5 
		# set debug mode = True if you want to get debug info DEBUG = True

3. 运行该脚本 python wordpress2blogger.py
4. 稍等片刻，OK！


###方法2

本博客在搬家的过程中，使用的是方法2，步骤如下：

1. wp后台到处xml文件
2. 在[http://wordpress2blogger.appspot.com/](http://wordpress2blogger.appspot.com/) 转换xml文件，去掉不兼容的tag，转换成blogger可读的xml格式
3. 登录blogger后台，设置，导入博客，选择导出的xml文件，即可！

但方法2有个限制，wp导出的xml文件，如果大于1M的话，通过GAE上的wp2blogger应用转换的时候不成功，须下载该转换程序，在本地部署后自行转换，下载地址：[http://code.google.com/p/google-blog-converters-appengine/](http://code.google.com/p/google-blog-converters-appengine/)

两种方法介绍完毕！祝blogger开心！

