---
title: Apache Giraph Introduction
type: post
layout: post
tags:
- Giraph
- BigData
- Hadoop
---

Apache Giraph 是基于Hadoop 2.0（YARN）的、处理大规模半结构化图数据的系统。它的实现参考了Google的Pregel系统，典型处理半结构化图数据特征是「速度」和「扩展性」。

由于MapReduce编程模型的限制，Hadoop所实现的MapReduce框架在进行迭代计算时，效率不高；并且在进行Graph computing的时候，由于图属于半结构化数据，节点之间存在错综复杂的关系，使用Hadoop MapReduce计算效率也不高。

为了解决Graph computing的问题，如AMP实验室，开发了Spark等系统。Spark使用RDD（弹性数据集）的概念，中间Shuffle阶段的数据存储在内存中，而不是硬盘上（如Hadoop）。不仅支持MapReduce编程模型，还支持更多的操作，比如union，join。

出于同样的目的，Apache Giraph也是为了解决Hadoop集群上Graph计算效率不高的问题。

在Hadoop Submit上，Giraph的开发者进行了详细介绍：

[Apache Giraph - Fast Scalable Graph Processing on YARN](http://www.slideshare.net/Hadoop_Summit/fast-scalable-graph-processing-apache-giraph-on-yarn)