---
title: Hue - NoClassDefFoundError
type: post
layout: post
tags:
- Hue
---

安装配置Hue时，在启动的时候报错，如下：

        NoClassDefFoundError: org/apache/hadoop/hive/conf/HiveConf

看网上说是`hadoop.tmp.dir`不可读,或把hive lib下的jar包全拷到hadoop的lib下。试了一下，都不行，看来基本都是虾扯蛋。

其实报错信息已经很明显了，是`hiveConf`的问题。仔细看看输出的内容，发现`hive_conf_dir`的值和我的配置不一样，问题就在这里。使用`export HIVE_CONF_DIR=/your/hive/conf/dir`，再启动，就OK了。