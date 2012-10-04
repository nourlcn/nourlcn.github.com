--- 
title: Node: 偷窥Node.js
type: post
layout: post
tags: 
- Node
---

一时好奇，想看看Node到底是什么东东，于是乎买了一本书，[《Node.js开发指南》](http://book.douban.com/subject/10789820/)。因为不懂JavaScript，不懂如何设计界面，也不懂什么异步变成，学Node几乎是从0开始。而这书正是从安装配置、基础、事件、异步等讲起，进而讲express，用一个例子展示了如何用node开发web应用，使用了bootstrap建立网站框架（这也是我想了解的东西），最后谈谈JavaScript的高级特性。综合个方面，这书，很适合我。

以下记录学习中觉得对我有用（起码在不久的将来一定会用到）的一些Node知识：

+ Express中路径控制，如果url中需要参数:
> app.get('/user/:username',function(req,res){
        res.send('your content');
    });
+ haha

