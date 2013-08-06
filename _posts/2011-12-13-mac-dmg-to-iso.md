--- 
title: Mac系统DMG格式转换为ISO格式
type: post
layout: post
tags: 
- Mac
- tools
---
尝试在虚拟机内装Mac系统时，发现down下来的景象是DMG格式，virtualbox不识别这种格式。搜了一下，Apple在发布系统时是没有ISO格式的。<br /><br />在网上找了个Perl脚本，可以将DMG格式转换为ISO格式，如下：<br /><br />－－－－以下内容为转载－－－－－－<br /><br />You’ll need to have perl installed.  Also, you may need to add an  additional dependency in the form of a perl zlib module.  So, here’s how  to install it:<br /><span></span><br /><blockquote style="background-color: #cccccc;">sudo apt-get install libcompress-zlib-perl</blockquote><blockquote style="background-color: #cccccc;">cd /usr/bin<br />sudo wget http://www.blinkenlights.ch/gnupod/dmg2iso.pl</blockquote>Now, in my Ubuntu install I had to make one change to the dmg2iso.pl script.<br /><blockquote style="background-color: #cccccc;">sudo gedit dmg2iso.pl</blockquote>At the very top you should see a line that says ‘<em style="background-color: #cccccc;">#!/usr/local/bin/perl</em>‘.  This tells the script where to find perl.  On my installation, perl is located in ‘<em>/usr/bin/perl</em>‘.   So change that line if you need to.<br />Now let’s make it excecutable.<br /><blockquote style="background-color: #cccccc;">sudo chmod 777 dmg2iso.pl</blockquote>Back to your home directory now.<br /><blockquote style="background-color: #cccccc;">cd</blockquote>If you have a .dmg file in your home directory (or any directory) called <em>bloodspell.dmg</em>, and you want to convert it to a .iso file you can type:<br /><blockquote style="background-color: #cccccc;">dmg2iso.pl bloodspell.dmg bloodspell.iso</blockquote>The script will take care of the rest.
