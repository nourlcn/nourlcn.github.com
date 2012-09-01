--- 
title: NullAppender in Hadoop configure
type: post
layout: post
tags: 
- Configuration
- Hadoop
- YARN
---
配置Hadoop0.23后，执行操作经常看到以下提示：<br /><pre style="background-color: #cccccc;">log4j:ERROR Could not find value <span>for</span> key log4j.appender.NullAppender<br />log4j:ERROR Could not instantiate appender named <span>"NullAppender"</span>. </pre><br />解决方法：<br />在conf/log4j.properties (或etc/hadoop/log4j.properties,取决于你的$HADOOP_CONF_DIR配置)内添加：<br /><span style="background-color: #cccccc;">log4j.appender.NullAppender=org.apache.log4j.varia.NullAppender </span><br />
