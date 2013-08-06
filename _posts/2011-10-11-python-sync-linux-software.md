--- 
title: 同步两台Linux系统的软件
type: post
layout: post
tags: 
- Linux
- Python
---


写了个脚本，可以同步两台linux pc上安装的软件。

#### 需求
  最常用的两台pc装的都使ubuntu11.04, 一台在实验室，一台在公司，都处于内网中，互相不能访问。两台机器都有开发的需要，因此最好能安装相同的软件环境。

因此写了个脚本，通过dpkg -l > file，将file通过ubuntu one云存储服务同步，运行这个python脚本，设置好file的路径，可以安装remote机器上得deb包，卸载local机器上多余的deb包。

工具很简单，一看就明白，可能有bug，欢迎提出。


代码托管在 [Github](https://github.com/nourlcn/tools/blob/master/sync_soft.py)
