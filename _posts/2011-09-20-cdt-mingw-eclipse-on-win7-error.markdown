--- 
title: !binary |
  V2luN+S4i0VjbGlwc2UrQ0RUK01pbkdX5o+Q56S66ZSZ6K+v

type: post
layout: post
tags: 
- Eclipse
---
  今天用eclipse+CDT+MinGW写C程序，最初提示<span style="background-color: white; color: blue;"> launch failed Binary not found</span>，在新建了Builder，配置make、编写makefile之后又提示<span style="color: blue;"></span><span style="color: black;"><span style="color: blue;">No targets specified and no makefile</span> found。</span><br /><br /><span style="color: black;">  翻了半天关于配置的博客，cmd命令行测试make gcc均没有问题，重启eclipse加载配置无效。</span><br /><br /><span style="color: black;">  后来想通了，我把MinGW相关的环境变量写入系统环境变量了（环境变量里还有一个当前用户的环境变量），需要使用管理员权限启动eclipse，才能正确加载配置。网上的资料大都是xp下的配置过程，没有考虑到权限的问题。</span><br /><br /><span style="color: black;">  当然，也可以在eclipse preferences里配置环境变量。 </span><br /><span style="color: black;"><br /></span><br /><span style="color: black;">  配置CDT+MinGW时间都浪费在权限上了，教训分享给大家。</span>
