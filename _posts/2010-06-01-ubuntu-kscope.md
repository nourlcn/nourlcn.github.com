--- 
title: "ubuntu10.04\xE5\xAE\x89\xE8\xA3\x85KScope"
type: post
layout: post
tags: 
- Ubuntu
---
在Ubuntu10.04上安装KScope，使用如下脚本可完成：<br/>1.复制到文件内，文件命名为yourname.sh<br/>2.更改文件权限为可执行 sudo chmod +x youname.sh<br/>3.sudo ./yourname.sh<br/>4.ok，不出意外的话，安装成功，可以使用了<br/><br/><pre><br/>#!/bin/bash<br/># This script helps you install Kscope on Ubuntu10.04.<br/># You can also use it to fix "Kscope doesn't run in KDE4" bug.<br/><br/>echo "Determining machine hardware name... "<br/>MACHINE=`uname -m`<br/>case "$MACHINE" in<br/>  i386 | i586 | i686)<br/>    ARCH="i386"<br/>    ;;<br/>  x86_64)<br/>    ARCH="amd64"<br/>    ;;<br/>  *)<br/>    ARCH="i386"<br/>    ;;<br/>esac<br/><br/># If Kscope is not installed, install it.<br/>which kscope &> /dev/null<br/>if [ $? -ne 0 ]; then<br/>  echo "Installing kscope..."<br/>  sudo apt-get install kscope || <br/>  wget http://archive.ubuntu.com/ubuntu/pool/universe/k/kscope/kscope_1.6.0-1_${ARCH}.deb && <br/>  sudo dpkg -i kscope_*.deb || <br/>  sudo apt-get -fy install || <br/>  echo "Oops, some error happens..."<br/>fi<br/><br/>kscope -v &> /dev/null<br/>if [ $? -eq 0 ]; then<br/>  echo "Kscope works fine."<br/>  exit<br/>fi<br/><br/>echo "Downloading KDE3 libraries needed by kscope..."<br/>wget http://ftp.debian.org/debian/pool/main/k/kdebase/kate_3.5.9.dfsg.1-6_${ARCH}.deb<br/>dpkg -x kate_3*.deb kate<br/><br/>echo "Installing KDE3 libraries..."<br/>sudo cp kate/usr/lib/libkateinterfaces.so.0.0.0 /usr/local/lib/<br/>sudo cp kate/usr/lib/libkateutils.so.0.0.0 /usr/local/lib<br/>sudo ln -s /usr/local/lib/libkateinterfaces.so.0.0.0 /usr/local/lib/libkateinterfaces.so.0<br/>sudo ln -s /usr/local/lib/libkateutils.so.0.0.0 /usr/local/lib/libkateutils.so.0<br/>sudo ldconfig<br/><br/>echo "Finished."<br/><br/></pre>

