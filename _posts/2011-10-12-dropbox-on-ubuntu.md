--- 
title: Ubuntu上安装Dropbox(破墙)
type: post
layout: post
tags: 
- Dropbox
- Ubuntu
---
由于某些众所周知的原因，linux下不能直接安装dropbox。<br /><br />即使通过浏览器下载了dropbox的deb包，在启动的时候还是需要下载部分组件，不能正常启动。<br /><br />解决方式：<br /><br />需要SSH帐号及proxychains<br />  <br />1. 代理本地的9050端口<br /><br /><br /> ***@***:~$ ssh -qTfnN -D 9050 username@host_address<br />2. 通过proxychains 启动dropbox安装过程 <br /><br />***@***:~$ proxychains /usr/bin/dropbox start -i<br /><br />此时可以看见安装进度，OK，搞定！
