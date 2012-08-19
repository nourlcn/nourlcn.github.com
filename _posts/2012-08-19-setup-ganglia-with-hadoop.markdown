--- 
title: 配置Ganglia监控Hadoop集群
type: post
layout: post
tags: 
- Ganglia
- Hadoop
---

操作系统：Ubuntu 12.04 LTS

集群环境:

1. namenode 192.168.3.*
1. datanode1 192.168.3.*
1. datanode2 192.168.3.*
1. datanode3 192.168.3.*
1. datanode4 192.168.3.*

前提，namenode上需要有apache环境。

### 服务器端

Ganglia的服务端安装在namenode上，在namenode上执行

		$ sudo apt-get install  ganglia-monitor ganglia-webfront gmetad

修改*/etc/ganglia/gmond.conf*配置文件:

+ 先找到setuid = yes,改成setuid =no;
+ 在cluster块中的name，改成name =”your-cluster-name”;

安装rrdtool

		$ sudo apt-get install rrdtool

修改*/etc/ganglia/gmetad.conf*配置文件。

在这个配置文件中增加一些datasource，即其他四个被监控的节点，增加一下内容：

		data_source “your-cluster-name” namenode:8649 datanode1:8649 datanode2:8649 datanode3:8649 datanode4:8649

### 数据源端
在datanode上安装ganglia-monitor

		$ sudo apt-get install  ganglia-monitor
拷贝namenode */etc/ganglia/gmond.conf* 覆盖*/etc/ganglia/gmond.conf*

### 配置web

将ganglia的文件链接到apache的默认目录下,在namenode上执行：

		$ sudo ln -s /usr/share/ganglia-webfrontend /var/www/ganglia

### 重启操作

重启datanode上的monitor服务

		$ sudo /etc/init.d/ganglia-monitor restart

重启namenode上的monitor，gmetad服务和apache服务：

		$ sudo /etc/init.d/ganglia-monitor restart
		$ sudo /etc/init.d/gmetad restart
		$ sudo /etc/init.d/apache2 restart

OK,现在可以通过*http://namenode_ip/ganglia*访问ganglia的页面了。

### 与Hadoop集成

修改*hadoop/conf/hadoop-metrics.properties*内容如下：
		# Configuration of the “dfs” context for ganglia

		dfs.class=org.apache.hadoop.metrics.ganglia.GangliaContext

		dfs.period=10

		dfs.servers=239.2.11.71:8649

		# Configuration of the “mapred” context for ganglia

		mapred.class=org.apache.hadoop.metrics.ganglia.GangliaContext

		mapred.period=10
		
		mapred.servers=239.2.11.71:8649

		# Configuration of the “jvm” context for ganglia

		jvm.class=org.apache.hadoop.metrics.ganglia.GangliaContext

		jvm.period=10

		jvm.servers=239.2.11.71:8649

----

(239.2.11.71这个是ganglia用的多播的地址，不需要改成gmetad的服务器地址)

OK,现在可以通过*http://namenode_ip/ganglia*监控hadoop了.


