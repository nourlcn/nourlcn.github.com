--- 
title: "Ubuntu\xE4\xB8\x8B\"VirtualBox Kernel driver not install\""
type: post
layout: post
tags: 
- Ubuntu
- Virtualbox
---
用下面的方法解决<br/><pre><br/>sudo /etc/init.d/vboxdrv start</pre><br/>启动vbox服务<br/><pre><br/>sudo chmod 666 /dev/vboxdrv<br/></pre><br/>给 /dev/vboxdrv加上可以操作的权限

