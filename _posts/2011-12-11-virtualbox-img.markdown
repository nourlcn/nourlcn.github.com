--- 
title: !binary |
  5aSN5Yi2VmlydHVhbGJveOmVnOWDjw==

type: post
layout: post
tags: 
- Virtualbox
---
将配置好的一台virtualbox虚拟机复制成多个虚拟机：<br />方法1：<br /><ul><li>copy vdi 文件，再导入虚拟机</li></ul><div style="background-color: #cccccc;">copy oldname.vdi newname.vdi</div><ul><li>但这样导入的时候提示uuid冲突，需要重新分配</li></ul><div style="background-color: #cccccc;">uuid： VBoxManage internalcommands setvdiuuid "./newpath/newname.vid"</div><br />方法2：<br /><ul><li>直接使用clone方式</li></ul><span style="background-color: #cccccc;">VBoxManage clonehd "oldname.vdi" "newname.vdi"  </span><br /><span style="background-color: #cccccc;"><br /></span><br /><span style="background-color: #cccccc;"><span style="background-color: white;">本文地址：</span><a href="http://nourlcn.ownlinux.net/2011/12/virtualbox.html" style="background-color: white;">http://nourlcn.ownlinux.net/2011/12/virtualbox.html</a></span>
