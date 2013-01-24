--- 
title: Windows下执行Linux命令
type: post
layout: post
tags: 
- Win
---

+ 方法一（可以实现部分命令）

自己编写bat脚本起名为cmd.bat放置在windows32文件夹下，这种方法网上有很多帖子，但是不推荐！！

+ 方法二（我目前的方法，极力推荐）
> 1. 下载安装cygwin，安装过程中根据自己的需要选择要安装的软件包，要想使用命令，需要安装bash（默认是已经选中的，只要你别取消就可以了）;
> 1. 安装完成，将cygwin的bin目录设置成环境变量，写入%PATH%中;
> 1. 开始-运行-cmd，输入ls mkdir chmod vim 等试试;
>
>基本Linux的终端一样的效果，哈哈哈哈
