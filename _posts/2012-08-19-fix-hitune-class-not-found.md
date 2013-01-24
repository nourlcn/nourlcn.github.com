--- 
title: HiTune启动时NoClassDefFoundError
type: post
layout: post
tags: 
- HiTune
- Hadoop
---

配置HiTune后，使用*start-all.sh*启动时，提示*Exception in thread "main" java.lang.NoClassDefFoundError: org/apache/commons/configuration/Configuration*，报错如下：

>Exception in thread "main" java.lang.NoClassDefFoundError: org/apache/commons/configuration/Configuration
	at org.apache.hadoop.metrics2.lib.DefaultMetricsSystem.<init>(DefaultMetricsSystem.java:37)
	at org.apache.hadoop.metrics2.lib.DefaultMetricsSystem.<clinit>(DefaultMetricsSystem.java:34)
	at org.apache.hadoop.security.UgiInstrumentation.create(UgiInstrumentation.java:51)
	at org.apache.hadoop.security.UserGroupInformation.initialize(UserGroupInformation.java:196)
	at org.apache.hadoop.security.UserGroupInformation.ensureInitialized(UserGroupInformation.java:159)
	at org.apache.hadoop.security.UserGroupInformation.isSecurityEnabled(UserGroupInformation.java:216)
	at org.apache.hadoop.security.KerberosName.<clinit>(KerberosName.java:83)
	at org.apache.hadoop.security.UserGroupInformation.initialize(UserGroupInformation.java:189)
	at org.apache.hadoop.security.UserGroupInformation.ensureInitialized(UserGroupInformation.java:159)

### 原因

>Commons Configuration jar file is not on Chukwa collector class path.  This happens when
the Hadoop cluster is 0.20.203+, and commons-configuration*.jar should be copied from hadoop
lib directory to Chukwa class path.

>([参考地址](http://goo.gl/X8L7Y))

### 解决方案：

>将Hadoop集群 $HADOOP_HOME/lib下的*.jar复制一份，放到*hitune/chukwa-hitune-dist/lib/*下，即可。


