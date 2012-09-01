--- 
title: Google Drive on Ubuntu
type: post
layout: post
tags: 
- Google
- Ubuntu
---
逛Flickr，无意中发现了<a href="http://www.flickr.com/photos/shizhao/7115739961/in/contacts/">在Ubuntu上使用Google Drive的图片</a>，心中大喜，特转来分享，感谢作者！<br /><h2>效果图如下：</h2><img alt="" src="http://farm8.staticflickr.com/7212/7115739961_2a8a6472d4.jpg" /><br /><h2>如何安装设置呢？</h2><ul><li>在Ubuntu上，执行一下命令：</li></ul><div><pre><code><span>sudo</span> <span>add</span><span>-</span><span>apt</span><span>-</span><span>repository</span> <span>ppa</span><span>:invernizzi</span><span>/</span><span>google</span><span>-</span><span>docs</span><span>-</span><span>fs</span><br /><span>sudo</span> <span>apt</span><span>-</span><span>get</span> <span>update</span><br /><span>sudo</span> <span>apt</span><span>-</span><span>get</span> <span>install</span> <span>google</span><span>-</span><span>docs</span><span>-</span><span>fs</span><br /></code></pre></div><ul><li>之后在Home下建立一个Drive文件夹：</li></ul><div><pre><code><span>mkdir</span> <span>Drive</span><br /></code></pre></div><ul><li>挂在Google Drive到这个文件夹：</li></ul><div><pre><code><span>gmount</span> <span>Drive</span> <span>username</span><span>@gmail</span><span>.</span><span>com</span><br /></code></pre></div>根据提示输入密码，即可！<br />
