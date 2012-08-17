--- 
title: set log level in hadoop0.23(YARN)
type: post
layout: post
tags: 
- Hadoop
- YARN
---
Yarn(Hadoop0.23)中默认的log级别是info，如何设置／更改这个log level呢？<br /><ul><li> 使用"bin/yarn daemonlog"命令</li></ul><pre>java org.apache.hadoop.log.LogLevel -getlevel <host:port> <name><br />java org.apache.hadoop.log.LogLevel -setlevel <host:port> <name> <level><br /></pre>本文地址：<span style="background-color: #cccccc; color: #274e13;"><a href="http://nourlcn.ownlinux.net/2011/12/set-log-level-in-hadoop023yarn.html"><span style="background-color: white; color: black;">http://nourlcn.ownlinux.net/2011/12/set-log-level-in-hadoop023yarn.html</span></a></span>
