--- 
title: new property in hadoop 0.23
type: post
layout: post
tags: 
- Hadoop
- YARN
---
new property in hadoop 0.23<br /><ol><li>dfs.web.ugi should not be used. Instead, use hadoop.http.staticuser.user</li><li>mapred.used.genericoptionsparser is deprecated. Instead, use mapreduce.client.genericoptionsparser.used </li></ol>这里有个list：<a href="http://hadoop.apache.org/common/docs/r0.23.0/hadoop-project-dist/hadoop-common/DeprecatedProperties.html">http://hadoop.apache.org/common/docs/r0.23.0/hadoop-project-dist/hadoop-common/DeprecatedProperties.html</a>
