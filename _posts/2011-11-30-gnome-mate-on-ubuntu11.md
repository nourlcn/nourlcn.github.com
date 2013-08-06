--- 
title: Ubuntu上安装Gnome Mate桌面
type: post
layout: post
tags: 
- Gnome
- Ubuntu
---
最近把实验室的ubuntu换成了Mate桌面环境，用着各种爽。今天又把工作PC 换成了Mate，方法如下：<br /><br />1，打开终端，输入下面命令：<br /><pre style="background-color: #999999;">sudo gedit /etc/apt/sources.list</pre>2，添加下面一行内容：<br /><pre style="background-color: #999999;">deb http://packages.linuxmint.com/ lisa main upstream import</pre>3，更新软件源：<br /><pre style="background-color: #999999;">sudo apt-get udpate</pre>更新源过程中，会遇到错误提示：<br /><blockquote style="background-color: #cccccc;">W: GPG error: http://packages.linuxmint.com lisa Release: The following signatures couldn’t be verified because<br />the public key is not available: NO_PUBKEY 3EE67F3D0FF405B2</blockquote>我们可以通过下面方法解决：<br /><pre><span style="background-color: #999999;">sudo apt-get install linuxmint-keyring</span><br /><span style="background-color: #999999;">sudo apt-get update</span><br /></pre>这样，我们就可以在Ubuntu 软件中心看到Mint 的软件列表了。<br />4，接下来安装Mint Mate：<br /><pre style="background-color: #999999;">sudo apt-get install mint-meta-mate</pre>同样，我们也可在“Ubuntu 软件中心”安装MGSE和Mint的其他扩展。<br /><br />安装完毕，注销从Mate登录即可。<br /><br />参考文章：<a href="http://www.bentutu.com/2011/11/ubuntu-11-10-install-linuxmint12-extensions-mate-mgse.html">http://www.bentutu.com/2011/11/ubuntu-11-10-install-linuxmint12-extensions-mate-mgse.html</a>
