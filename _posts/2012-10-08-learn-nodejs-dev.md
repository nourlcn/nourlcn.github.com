--- 
title: 偷窥Node.js
type: post
layout: post
tags: 
- Nodejs
---

#### 介绍一本书
一时好奇，想看看Node到底是什么东东，于是乎买了一本书，<a href="http://www.amazon.cn/gp/product/B008HN793I/ref=as_li_tf_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B008HN793I&linkCode=as2&tag=ownlinux-23">《Node.js开发指南》</a><img src="http://ir-cn.amazon-adsystem.com/e/ir?t=ownlinux-23&l=as2&o=28&a=B008HN793I" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
 。因为不懂JavaScript，不懂如何设计界面，也不懂什么异步变成，学Node几乎是从0开始。而这书正是从安装配置、基础、事件、异步等讲起，进而讲express，用一个例子展示了如何用node开发web应用，使用了bootstrap建立网站框架（这也是我想了解的东西），最后谈谈JavaScript的高级特性。综合个方面，这书，很适合我。

#### 遇到的问题及解决方式

+ 使用connect-mongdo时，报错：Cannot read property 'Store' of undefined
>解决： require('connect-mongo')的时候加一个参数express，如下：
>
        var express = require('express');
        var MongoStore = require('connect-mongo')(express),
    
+ 使用app.use(express.router(routers)) 提示 has no method 'router'
> 解决：原因可能是express 3.0后没有了router这个方法，继续使用之前的app.use(app.router)，在app.js末尾加入：
>
        routers(app);
>
(这样routes/inndex.js 可以继续使用书中的书写格式.)

+ req调用flash时报错，TypeError: Object #<IncomingMessage> has no method 'flash'
> 查看express的issues发现，flash在3.0+后的版本中已经不支持了。见[这里](https://github.com/visionmedia/express/issues/1170)

+ Express中路径控制，如果url中需要参数:
>     app.get('/user/:username',function(req,res){res.send('your content');});

+ 使用dynamicHelpers时，app(req, res){ app.handle(req, res); } has no method 'dynamicHelpers'

#### 一些有用的链接

+ [nodebeginer](http://www.nodebeginner.org/index-zh-cn.html) 一本短小的Node入门电子书
+ Felix Geisendörfer的大作[Understanding node.js](http://goo.gl/uT9V)
+ 亚马逊上这本书的链接：<a href="http://www.amazon.cn/gp/product/B008HN793I/ref=as_li_tf_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B008HN793I&linkCode=as2&tag=ownlinux-23">《Node.js开发指南》</a><img src="http://ir-cn.amazon-adsystem.com/e/ir?t=ownlinux-23&l=as2&o=28&a=B008HN793I" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />


