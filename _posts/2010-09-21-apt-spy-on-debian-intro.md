--- 
title: !binary |
  YXB0LXNweeeUqOazlQ==

type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---
参考资料:http://www.0x32.cn/html/y2009/194.html<br/><br/><strong>apt-spy</strong><br/><br/>通过apt-spy自动设置debian源<br/><br/>apt-spy工具可以帮助我们找到最快的服务器<br/><br/>通过修改/etc/apt/sources.list设置一个临时的源，比如:<br/><br/>deb http://http.us.debian.org/debian/ stable main<br/><br/>然后更新系统的软件包列表<br/><br/>apt-get update<br/><br/>之后安装apt-spy<br/><br/>apt-get install apt-spy<br/><br/>使用apy，获得镜像列表<br/><br/>apt-spy update<br/><br/>通过spy测试区域的源速度 修改sources.list<br/><br/>apt-spy -d unstable -a asia -t 5<br/><br/>可以将挑选出来的安装源保留，删除source.list中的其他安装源,然后重新<br/><br/>apt-get update<br/><br/>至此安装源鼓捣完毕！<br/><br/>apt-spy 参数<br/><br/>下面是使用方法和参数: apt-spy [options]<br/>选项：<br/>-d distribution 选择 debian 的发行版本，例如 stable 。除升级外，必须使用此参数。<br/>-a area 选择进行测试的区域 ，例如 Aisa 。<br/>-c config 指定配置文件。<br/>-e number 指定测试的服务器数量。<br/>-f file 测试时抓取制定的文件（文件相对 debian base 的路径）。<br/>-i file 指定输入的文件，配合 -w 参数使用。<br/>-m mirror-list 指定要升级的镜像列表文件。<br/>-o output-file 重定向输出到指定文件。<br/>-p proxy 指定使用的代理服务器，需要遵从 [server]:[port] 的格式。<br/>-s country_list 指定要进行测试的国家。不能和 -a 参数同时使用。<br/>-t time 指定进行测试时每台服务器的超时时间，只能是正整数。<br/>-u update-URL 从指定的 URL 获得镜像列表更新。<br/>-w file 输出 -i 参数提供的服务器列表中速度最快的前几台镜像服务器（缺省是前 5 台）。<br/>-n number 制定 -w 参数输出的服务器数量。<br/>-v 输出版本信息。<br/>-h 输出当前帮助信息<br/>update 升级镜像站点列表

