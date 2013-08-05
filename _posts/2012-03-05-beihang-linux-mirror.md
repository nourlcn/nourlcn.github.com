--- 
title: 北航Linux mirror

type: post
layout: post
tags: 
- Beihang
- BUAA
- Linux
---

今早看邮件，发现有喜讯：

北京航空航天大学开源镜像站（BUAA Open Source Mirror Site),简称北航镜像站，是由北航在校学生自发搭建、维护，旨在为广大Linux用户提供方便、快捷的更新服务。 由于资源有限，目前北航镜像站只提供以下Linux发行版的更新服务：

￼
欢迎开源爱好者、单位加入我们的团队，提供技术、硬件支持，力求打造北航精品镜像服务。

若使用北航镜像，以Ubuntu10.04为例：

编辑/etc/apt/source.list，内容如下：

		# Ubuntu 10.04 北航源 mirror.buaabt.cn

		deb http://mirror.buaa.edu.cn/ubuntu/ lucid main multiverse restricted universe
		deb http://mirror.buaa.edu.cn/ubuntu/ lucid-backports main multiverse restricted universe
		deb http://mirror.buaa.edu.cn/ubuntu/ lucid-proposed main multiverse restricted universe
		deb http://mirror.buaa.edu.cn/ubuntu/ lucid-security main multiverse restricted universe
		deb http://mirror.buaa.edu.cn/ubuntu/ lucid-updates main multiverse restricted universe
		deb-src http://mirror.buaa.edu.cn/ubuntu/ lucid main multiverse restricted universe
		deb-src http://mirror.buaa.edu.cn/ubuntu/ lucid-backports main multiverse restricted universe
		deb-src http://mirror.buaa.edu.cn/ubuntu/ lucid-proposed main multiverse restricted universe
		deb-src http://mirror.buaa.edu.cn/ubuntu/ lucid-security main multiverse restricted universe
		deb-src http://mirror.buaa.edu.cn/ubuntu/ lucid-updates main multiverse restricted universe

ubuntu的北航源列表：[http://mirror.buaa.edu.cn](http://mirror.buaa.edu.cn) 建议北航校内同学使用，速度超快！

### 2012-08-26更新

今天才发现北航的镜像地址变成buaa"官方"的了。

有IPv4 IPv6两个地址：

+ IPv6 [http://mirror.buaa6.edu.cn/](http://mirror.buaa6.edu.cn/)
+ IPv4 [http://mirror.buaa.edu.cn/](http://mirror.buaa.edu.cn/)
