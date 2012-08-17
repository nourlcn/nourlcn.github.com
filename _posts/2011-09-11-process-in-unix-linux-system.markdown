--- 
title: Process in Unix/Linux System
type: post
layout: post
tags: 
- Linux
---
  Unix和Linux中的系统API非常相似，本文介绍关于Linux系统调用API，涉及内容几乎不用改动可运行在Unix机器上。<br />  本文涉及的API注释及用法信息来自<a href="http://www.apuebook.com/">《APUE》</a>. <br />  一般ID=0的process为系统调度程序，或称之为swapper，ID=1的为init process，在内核加载完毕后创建，负责按etc/rc* etc/init.d etc/inittab的配置创建系统环境；<br />  可以通过以下函数获取process相关的信息：<br /><br /><i style="color: blue;">#include <unistd.h> <br />pid_t getpid(void);      Returns: process ID of calling process <br />pid_t getppid(void);    Returns: parent process ID of calling process <br />uid_t getuid(void);      Returns: real user ID of calling process <br />uid_t geteuid(void);    Returns: effective user ID of calling process <br />gid_t getgid(void);      Returns: real group ID of calling process <br />gid_t getegid(void);    Returns: effective group ID of calling process</i><br /><br />  关于pocess，首先要介绍的就是fork函数：<br /><div style="color: blue;">#include <unistd.h>  </div><span style="color: blue;">pid_t fork(void);   </span><br /><span style="color: blue;">Returns: 0 in child, process ID of child in parent, –1 on error  </span><br />  说明：<br />    1. 该函数创建一个新的process<br />    2. fork函数调用一次，但返回两次；
