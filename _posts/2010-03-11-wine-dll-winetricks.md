---
title:  wine dll winetricks
type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---
<span style="font-size: medium;">在使用Wine安装Windows环境下的软件时会经常需要用到一些dll库文件，通常做法是从Windows下拷贝一份到Wine目录下，比较麻烦，Winetricks这个软件可以帮助我们安装所需要的dll库。</span><br/><pre><br/>$wget http://www.kegel.com/wine/winetricks    #下载winetricks<br/>$chmod +x winetricks       #修改为可执行<br/>$./winetricks --help        #查看帮助和其所包含的套件<br/>$./winetricks               #带有gui界面，可查看所包含的套件列表<br/>$./winetricks mfc42      #安装mfc42库<br/></pre>

