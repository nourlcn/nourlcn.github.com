--- 
title: Hadoop0.23新特性介绍
type: post
layout: post
tags: 
- Hadoop
- MapReduce
- YARN
---
Hadoop的最新稳定版应该是0.20.205.<br />最近hadoop发布了 0.23版本，相对于最近稳定版，新的hadoop版本主要改动有两点：<br /><div style="clear: both; text-align: center;"><a href="http://hadoop.apache.org/common/docs/r0.23.0/hadoop-yarn/hadoop-yarn-site/yarn_architecture.gif" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="247" src="http://hadoop.apache.org/common/docs/r0.23.0/hadoop-yarn/hadoop-yarn-site/yarn_architecture.gif" width="400" /></a></div><ul><li>HDFS Federation</li></ul>    正如在<a href="http://nourlcn.ownlinux.net/2011/11/yarn-next-generation-hadoop-map-reduce.html">上一篇Post</a>中提到的那样，HDFS的NameNode需要管理所有DataNode的元数据，HDFS启动后，DataNode会向NameNode注册自己节点所管理的数据块信息及路径。NameNode成为HDFS扩展的瓶颈（具体来说，是NameNode的内存瓶颈），NameNode<br />的极限是支持4000左右DataNode节点。<br />   0.23版本的Hadoop改进了HDFS的NameNode，DataNode的元数据可以分布存储在多个NameNode上。NameNode之间是Federation的关系，每个NameNode是独立的，可以使用任一个DataNode存储数据，HDFS启动时，每个DataNode需要在所有的NameNode注册，接收并执行NameNode发送的command.<br /><br /><ul><li>MapReduce v2</li></ul>    新的Hadoop中实现了新版本的MapReduce。<br />    之前的文章曾经提到，Hadoop MR 中的JobTracker是整个MR框架的瓶颈，JobTracker<br />负责管理、调度、分配一个Job中的所有操作。<br />    新版的Hadoop中，JobTracker被Resource Manager、Node Manager和Application<br />Master所替代。<br />    Application是MRv2中的新概念，它可以是MRv1中的一个Job，或是多个Job组成的一个有向无环图。 <br />    Resource Manager的管理职责是管理global resource、根据Application的资源请求来调度application，这包括集群中所有的计算资源。它负责分配resource给application。<br />    Application Master的职责是与Resource Manager协调application的调度问题，汇报当前Application的状态和进度。<br />    Node Manager类似于<a href="http://nourlcn.ownlinux.net/2011/11/dryad-paper-review-and-system-analysis.html">Dryad</a>中每个节点的Daemon进程，它相当于机器代理，它负责监控当前机器资源的使用情况，并汇报给Resourde Manager。<br /><br />     <br />我的一点想法：<br />    Dryad借鉴模仿了MRv1的思想，创新点在于使用DAG代表、管理一个作业。<br />    反过来，新版的Hadoop很多地方又借鉴了Dryad的思想， 将作业的管理由之前的一个节点一个层次（JobTracker）改动为多个节点多个层次。
