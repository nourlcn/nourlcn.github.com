--- 
title: !binary |
  eXVtLmNvbmbmtYXmnpA=

type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---
cat /etc/yum.conf<br/><pre><br/>[main]   //main开头的块用于对客户端进行配置，在main后也可以指定yum源（不推荐这样做），与/etc/yum.repo.d中指定yum源相同<br/>cachedir = /var/cache/yum //指定yum缓存目录<br/>keepcache = 0  //安装完成后是否保留软件包，0为不保留（默认为0），1为保留<br/>debuglevel = 2  //指定排错级别，默认为2 取值0--10<br/>logfile = /var/log/yum.log  //指定yum的日志文件<br/>pkgpolicy = newest  //包的策略，如果配置多了yum源，同一软件在不同的yum源中有不同版本，newest则安装最新版本，该值为lastest，则yum会将服务器上ID按照字母序排列，选择最后那个服务器上的软件安装<br/>distroverpkg = redhat-release //指定一个软件包，yum会根据这个包判断系统的发行版本<br/>tolerant = 1 <br/>exactarch = 1 //是否只升级与已经安装的软件包CPU体系结构一致的包，默认1表示只安装一致的包，0表示可以不一致<br/>retries = 20 //网络连接错误重诗次数<br/>obsoletes = 1 <br/>gpgcheck = 1 <br/>plugins = 1 //是否启用插件，默认1为允许，0表示不允许<br/>reposdir=/etc/yum.repos.d //repo文件位置<br/></pre><br/><br/># PUT YOUR REPOS HERE OR IN separate files named file.repo<br/># in /etc/yum.repos.d[/code]

