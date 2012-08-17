--- 
title: MapReduce
type: post
layout: post
tags: 
- MapReduce
---
<p>MapReduce框架：<img src="http://farm3.static.flickr.com/2375/5699664914_244a91716b.jpg" /></p>  <p> </p>  <p>MapReduce应该使用的是分治的思想，将大的数据集分割成较小的部分，交给Map函数处理. 将Map函数的处理结果作为Reduce的输入，所有Reduce的结果进行简单连接，就是整个一个完整的结果集合.</p>  <p>Map和Recude节点是等价的, 统一由Master管理. Master会选择相对空闲的节点分配Map任务或者Recude任务.</p>  <p>Map的工作是接受输入数据，输出Key-Value对.</p>  <p>这些Key-Value对经过简单的处理，相同的Key对应的Value形成一个小的集合，可以被一个Reduce处理.</p>  <p>Reduce所做的工作就是对这些Key对应的不同Value值进行处理.</p>  <p>因为相同key对应的value在Map阶段处理后归并到一起了，Reduce会对相同的key值对应的Value进行处理。</p>  <p>对reduce的输出结果进行简单归并，这就是最终结果.</p>  <p>因为所有Map节点的工作不可能同时完成, 所以对Map产生的结果,在送给Reduce之前, 需要有个缓冲的地带, 就是途中的Intermediate files部分.</p>  <p>这样有什么好处呢？</p>  <p>1. 数据集的增大或者减小，对每个map或者reduce的影响是非常小的</p>  <p>2.可以通过增加Map和Reduce节点，增强计算处理能力（这应该也是为什么MapReduce处理大数据集的优势）</p>  <p>3.MapReduce的模型简单，分工明确，开发难度小</p>  <p>4. Map的输出作为Reduce的输入,Map和Reduce节点是等价的,这样一台机器既可以执行Map任务,又可以执行Reduce任务,不会导致严重的设备闲弃的情况. </p>  <p>推荐：关于MapReduce可以读读此文 <a title="http://bit.ly/iDYAjJ" href="http://bit.ly/iDYAjJ" target="_blank">http://bit.ly/iDYAjJ</a></p>
