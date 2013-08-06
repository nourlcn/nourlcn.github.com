--- 
title: MapReduce中作业提交的过程
type: post
layout: post
tags: 
- MapReduce
- YARN
---
当Client调用Job的submit方法，向MapReduce提交一个Job后，MapReduce在正式执行Map作业和Reduce作业前，会做什么准备工作呢？<br /><br /><ol><li>检查Job Configuration中关于输入输出的选项是否合适；</li><li>计算输入的Split划分情况，因为一个Split对应一个Map，Split划分的块数决定需要的Map数量；</li><li>如果Job需要使用分布式缓存，设置分布式缓存的信息；（DistributedCache）</li><li>拷贝Job的jar包和配置到分布式文件系统中；（默认是HDFS）</li><li>将Job的jar包和Map Reduce配置提交给MapReduce的JobTracker；（在YARN这中，提交给ResourceManager）</li><li>启动Map Task和Reduce Task，监控作业执行。</li></ol>
