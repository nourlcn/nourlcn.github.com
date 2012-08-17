--- 
title: !binary |
  WXVt5pa55byP5a6J6KOFQ2xvdWRlcmEgSGFkb29w

type: post
layout: post
tags: 
- Cloudera
- Hadoop
---

安装配置Hadoop是件很琐碎的事情。

对于Redhat、Centos等使用Yum作为package管理方式的Linux用户来说，有种简单快速的方法安装部署由Cloudera发布的Hadoop版本，既CDH。

Redhat/Centos系列可以下载rpm包安装，也可以配置repo，使用Yum方式一键安装：

+ Redhat/Centos/Oracle 5

		wget http://archive.cloudera.com/cdh4/redhat/5/x86_64/cdh/cdh4-repository-1-0.noarch.rpm
		sudo rpm --import http://archive.cloudera.com/cdh4/redhat/5/x86_64/cdh/RPM-GPG-KEY-cloudera

+ Redhat/Centos 6
		wget http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/cdh4-			repository-1-0.noarch.rpm
		sudo rpm --import http://archive.cloudera.com/cdh4/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera

然后安装各组件：

		$ sudo yum install hadoop-yarn-resourcemanager
		$ sudo yum install hadoop-hdfs-namenode
		$ sudo yum install hadoop-hdfs-secondarynamenode
		$ sudo yum install hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce
		$ sudo yum install hadoop-mapreduce

因为我使用Debian/Ubuntu系列的Linux，这种Yum安装方式我没有验证。

具体细节可参考Cloudera的安装说明

本文地址：[http://nourlcn.ownlinux.net/2012/02/yumcloudera-hadoop.html](http://nourlcn.ownlinux.net/2012/02/yumcloudera-hadoop.html)

