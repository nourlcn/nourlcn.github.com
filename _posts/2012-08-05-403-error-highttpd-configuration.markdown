--- 
title: lighttpd配置403错误问题
type: post
layout: post
tags: 
- Lighttpd
- Linux
- PHP
---


在Ubuntu上配置lighttpd时，访问web页面总是提示403 Error。参考了[这篇文章](http://forum.ubuntu.org.cn/viewtopic.php?f=54&amp;t=244755)后，总算解决了这个问题。

首先，403 Error表面上看是访问权限的问题，在lighttpd的配置文件*/etc/lighttpd/lighttpd.conf*中有这么两行：

		server.username = "www-data"
		server.groupname = "www-data"

但是即使把*/var/www*下的内容*chown/chgrp www-data*，甚至*chmod 777*后，仍然存在问题。这说明不是访问权限的问题。而是lighttpd不能识别php，CGI有问题，默认的配置不载入CGI模块，在默认的额lighttpd.conf也没有关于mod_cgi的配置。


### 解决方式

使用*/usr/sbin/lighty-enable-mod*载入*mod_cgi*，将*mod_cgi*产生的默认配置中冲突的选项注释掉，位置在*/etc/lighttpd/conf-enabled/10-cgi.conf*

以下内容与lighttpd的配置冲突，注释掉：

	#$HTTP["url"] =~ "^/cgi-bin/" {
	#    cgi.assign = ( "" =&gt; "" )
	#}

OK，重启或者*force-reload lighttpd*的配置，问题解决了。
