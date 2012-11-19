--- 
title: MapReduce
type: post
layout: post
tags: 
- MapReduce
- Hadoop
---

云计算是炒得比较热的一个概念，现在几乎各行各业都在提这个概念.
伴随云计算这个词,往往还会提到Hadoop或MapReduce,恰巧我的毕业设计又是MapReduce相关的,因此我打算用3-4篇post来细说一下MapReduce的过程.

####何为MapReduce？

最初的MapReduce是指函数式编程语言(比如Lisp)中的映射Map、化简Reduce操作。
现在所说的MapReduce系统源于Google在04年OSDI会议上发表的一篇论文 [MapReduce: Simplified Data Processing on Large Clusters](http://research.google.com/archive/mapreduce.html), 此文源自Google的两位大牛Jeffrey Dean和Sanjay Ghemawat. MapReduce这种编程模型最初在Google内部使用,其擅长在大的数据集上进行计算.

####Hadoop和MapReduce是什么关系呢?

简单来说，作为一种编程模型，MapReduce可以和Hadoop无关。Hadoop中实现了MapReduce并且是影响最广泛的实现。

Hadoop最初是由Yahoo!开发,后来由Apache主导的一个开源项目.
Hadoop整个项目主要由三部分组成: Common,HDFS,MapReduce.

+ Common实现Hadoop系统的基础功能；
+ HDFS指Hadoop Distributed File System,是Google GFS的开源实现，HDFS的主要功能是分布式存储数据；
+ MapReduce部分实现了MapReduce编程框架

这就是MaReduce和Hadoop的关系

#### 为什么会有MapReduce？

当需要处理的数据集非常大时，采用普通的处理方式很费时。比如Google需要抓取、索引internet上的web页面，据Google的统计，Web正在以每天十亿个页面的速度增长，未来每天增长的页面数量会更多。

针对这种持续增长的数据集，单纯的改进算法、使用单机节点进行计算很快就会达到性能提升的瓶颈。因此，采用集群计算，通过增加集群的节点数量，将大的数据集切分成等价问题的小数据集由单个节点进行计算，最终对所有节点的输出进行合并，是简单有效的解决大数据问题的方式。

这种对大规模问题进行切分(Map)，由不同节点并行执行，最终将结果合并(Reduce)的过程，就是MapReduce的基本思想。

#### 如何MapReduce？

WordCount是最常见的用来解释什么MapReduce的例子，[这里有一个Java版的wordcount的例子](http://wiki.apache.org/hadoop/WordCount).

比如有个文档，内容如下：

		aaa
		aaa bbb
		aaa bbb ccc
		bbb

使用wordcount的方式统计文档中每个单词出现的次数，步骤如下：

+ 数据切分：这里我们按行进行切分，即文档的每一行分配给一个map，这个文档需要4个map操作，这四个map可以并行执行；
+ 执行map阶段，map的输出为key-value对，即每个单词出现的次数，这四个map的输出如下：

		aaa -> map -> (aaa,1)
		aaa bbb -> map -> (aaa,1) (bbb,1)
		aaa bbb ccc -> map ->(aaa,1) (bbb,1) (ccc,1)
		bbb -> map -> (bbb,1)

+ 所有map的输出，作为reduce的输入，相同key对应的value进行相加并针对key进行排序：
(aaa,1)(aaa,1)(bbb,1)(aaa,1)(bbb,1)(ccc,1)(bbb,1) -> reduce -> (aaa,3)(bbb,3)(ccc,1)

wordcount的结果就是 aaa出现了3次，bbb出现了3次，ccc出现了一次。

这是简单的wordcount过程，当一个mapreduce作业在Hadoop集群上执行的时候，Hadoop的Map阶段和Reduce阶段做了大量的工作，而Map和Reduce的执行可以说是其中最简单的部分。

具体的Map执行过程和Reduce执行过程稍后总结。

##### 相关阅读及本文参考：

+ [http://research.google.com/archive/mapreduce.html](http://research.google.com/archive/mapreduce.html)
+ [http://code.google.com/intl/zh-CN/edu/parallel/mapreduce-tutorial.html](http://code.google.com/intl/zh-CN/edu/parallel/mapreduce-tutorial.html)

下一篇预告：《Hadoop MapReduce中Map阶段分析总结》