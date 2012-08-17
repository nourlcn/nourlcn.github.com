--- 
title: !binary |
  5L2/55SoU1NI6K6/6ZeuVmlydHVhbEJveOWGhUxpbnV4

type: post
layout: post
tags: 
- Linux
- SSH
- Virtualbox
---
<ul><li>安装Linux后，passwd修改root密码</li><li>在vbox的安装目录下创建一个bat脚本，内容如下:</li></ul><div><span style="background-color: #cccccc;"><span style="color: #0c343d;">VBoxManage setextradata 虚拟机名称 "VBoxInternal/Devices/pcnet/0/LUN#0/Config/ssh/Protocol" TCP</span></span></div><div><span style="background-color: #cccccc;"><span style="color: #0c343d;">VBoxManage setextradata 虚拟机名称 "VBoxInternal/Devices/pcnet/0/LUN#0/Config/ssh/GuestPort" 22</span></span></div><div><span style="background-color: #cccccc;"><span style="color: #0c343d;">VBoxManage setextradata 虚拟机名称 "VBoxInternal/Devices/pcnet/0/LUN#0/Config/ssh/HostPort" 2222</span></span></div><div><ul><li>执行该脚本</li><li>ssh 访问127.0.0.1，端口2222</li><li>使用root身份和密码登录</li></ul><div>本文地址：<a href="http://nourlcn.ownlinux.net/2011/07/sshvirtualboxlinux.html">http://nourlcn.ownlinux.net/2011/07/sshvirtualboxlinux.html</a></div></div>
