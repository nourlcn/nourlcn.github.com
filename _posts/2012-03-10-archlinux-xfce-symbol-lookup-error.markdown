--- 
title: "Archlinux\xE5\xAE\x89\xE8\xA3\x85xfce\xE6\x8F\x90\xE7\xA4\xBAsymbol lookup error"
type: post
layout: post
tags: 
- Archlinux
- Linux
- XFCE
---


archlinux下安装完xorg-server, pacman -S xfce4安装xfce桌面.

在startxfce4的时候,桌面总是闪动一下就报错了,提示:

		symbol lookup error: /usr/lib/libgtk-x11.2.0.so.0: undefined symbol:...

Google了半天,各种不靠普的解答都有,最后在bbs.archlinux.org上找到了答案. 原文如下:

>`I don't know if it matters now, but I'd like to post my solution in case anyone else comes across this problem.
You were pretty much correct Tyo. I did pacman -Syu before and after the installation of xfce, but my problem was after the installation there was a file at /etc/profile.d/locale.sh that was causing a conflict and not allowing the system to update at all. I never noticed it and when it went back to the cursor so fast I automatically assumed everything was up to date and it had nothing to do. I removed the locale.sh file, ran pacman -Syu, and everything updated as it should and xfce works flawlessly now.
Well, you know what they say about assuming...
Thanks a lot guys.
-Kin
`

###原因
*/etc/profile.d/locale.sh*导致pacman -Syu的时候不能正确的update系统

###解决
将*/etc/profile.d/locale.sh*删除或重命名
pacman -Syu更新系统
pacman -S xorg-server xfce4更新/安装xfce4
启动xfce: startxfce4

