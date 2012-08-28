--- 
title: "\xE2\x80\x98no namenode to stop\xE2\x80\x99 Error in Hadoop"
type: post
layout: post
tags: 
- Hadoop
- HDFS
---
Hadoop在执行stop-all.sh或stop-dfs.sh的时候，经常会遇到’no namenode to stop’这个错误，结果就是你stop了Hadoop或者DFS，使用jps查看时，namenode的进程还是存在。<br />如果start-hadoop.sh或start-dfs.sh后直接执行stop-hadoop.sh或者stop-dfs.sh，则不会发生这个现象。<br /><h3>为什么会这样呢？</h3><blockquote>因为Hadoop用来保存进程id的文件默认是在/tmp目录下，而/tmp会被系统定期清理，这样stop-all.sh或stop-dfs.sh的时候就有可能找不到namenode的进程pid。不能正常关闭namenode。</blockquote><h3>如何解决呢？</h3><blockquote>重新定义pid文件的存放位置：在启动hadoop的用户.bashrc内或者hadoop/conf/hadoop-env.sh内增加配置：</blockquote><div><pre><code><span>export</span> <span>HADOOP_PID_DIR</span><span>=</span><span>/home/</span><span>hadoop</span><span>/</span><span>pids</span><br /></code></pre></div><blockquote>这样就OK了。</blockquote>网上很多帖子说执行hadoop namenode -format，然后重启hadoop，这是错误的做法。这样直接格式化DFS，导致丢失数据。<br /><br />本文地址：<a href="http://nourlcn.ownlinux.net/2012/06/no-namenode-to-stop-error-in-hadoop.html">http://nourlcn.ownlinux.net/2012/06/no-namenode-to-stop-error-in-hadoop.html</a>
