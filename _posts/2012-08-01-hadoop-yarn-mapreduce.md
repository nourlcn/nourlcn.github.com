--- 
title: "Hadoop 0.23 MapReduce 部分注释"
type: post
layout: post
tags: 
- Hadoop
- MapReduce
- YARN
---


最初我打算在Hadoop0.23这个分支上做一些优化，后来由于种种原因（0.23更新太快、不稳定、LOG等不完善...），我觉得Hadoop 0.20（1.0的稳定版就是基于0.20）更适合我的工作。于是我放弃了0.23转向了0.20。

但前期在Hadoop0.23花费了很大精力，对Mapreduce部分做了一些注释，git diff 的结果有近6500行。

我打算把我注释过的代码托管在github上，供对MapReduce感兴趣的朋友参考，共同交流学习。

代码地址：[https://github.com/nourlcn/yarn-comment](https://github.com/nourlcn/yarn-comment)
