--- 
title: Hadoop Single Node Setup
type: post
layout: post
tags: 
- Hadoop
---
//旧机器装Linux，驱动简直就是噩梦<br />装好Linux2.6后，（以ubuntu或debian为例），Hadoop non-distributed mode 安装如下：<br />1. 配置java环境<br />apt-get install openjdk-6-jdk openjdk-6-jre<br />export JAVA_HOME=/usr/lib/jvm/java-6-openjdk<br />//配置好JAVA_HOME后，就不需要再修改hadoop中的/con/hadoop-env.sh了<br />2. 下载安装最新版的hadoop<br /><div align="left">wget <a href="http://mirror.bjtu.edu.cn/apache/hadoop/common/stable/hadoop-0.20.203.0rc1.tar.gz">http://mirror.bjtu.edu.cn/apache/hadoop/common/stable/hadoop-0.20.203.0rc1.tar.gz</a></div><div align="left">tar –zxvf hadoop-*.tar.gz</div><div align="left">3. 以standalone模式运行hadoop</div>$ mkdir input<br />$ cp conf/*.xml input<br />$ bin/hadoop jar hadoop-examples-*.jar grep input output 'dfs[a-z.]+' <br /><img height="213" src="http://i1218.photobucket.com/albums/dd413/nourlcn/wordpressblog/hadoop_single_mode.png" style="margin: 3px 10px 5px 0px;" width="510" /> <br />$ cat output/*<br /><img src="http://i1218.photobucket.com/albums/dd413/nourlcn/wordpressblog/hadoop_single_mode_output.png" style="margin: 3px 10px 5px 0px;" />
