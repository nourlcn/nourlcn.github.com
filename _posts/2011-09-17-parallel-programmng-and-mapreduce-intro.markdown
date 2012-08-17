--- 
title: !binary |
  5bm26KGM57yW56iL5Y+KTWFwcmVkdWNl5LuL57uN

type: post
layout: post
tags: 
- MapReduce
- Parallel
---
  现代计算机采用冯诺依曼结构，基本思想就是存储程序并执行。<br /><br />  为计算机编写的程序，在计算机中以指令的形式序列化存储，程序的运行本质上是机器取指令并一步一步顺序执行的过程。多个程序同时运行依赖于操作系统的调度程序为其分配独立的时间片，按队列或优先级分别执行。<br /><br />  并行编程是为提升机器的性能、效率，并行编程模型将问题分解为不同的part，每部分可独立执行，不同的part可以同时、独立的运行在不同的CPU上(可以是一台机器或多台机器)，最终将每部分的执行结果合并，即为整个并行程序的执行结果。<br /><br />  并行编程的优势就是运行快，对于问题的输入集合比较大的情况下，可以分解问题为多个小问题，充分利用计算资源得到结果；缺点就是并行编程过程复杂。 <br /><br /><div style="clear: both; text-align: center;"><a href="http://code.google.com/edu/parallel/img/mrfigure.png" style="margin-left: 1em; margin-right: 1em;"><img border="0" height="401" src="http://code.google.com/edu/parallel/img/mrfigure.png" width="640" /></a></div><br /><br />  Mapreduce是并行编程之一，它将问题的输入划分成多个split，每个split对应一个map过程，map将输入从一种KV映射转换为inter-k-v，称为中间输出；map的输出经过merge、shuffle、copy等过程，在Master的调度下指派（一般是hash映射）到相应的reduce节点，reduce过程对inter-k-v进行合并输出，产生最终output.<br /><br />  整体来看，MapReduce是典型的并行化处理问题。<br />  由于MR的过程简单清晰，基于Hadoop的mapreduce过程隐藏了烦琐的schedule、split等过程，程序员只需编写符合stdio的map和reduce函数，就可以使用。<br /><br />  关于MR，本博客有多篇介绍，见<a href="http://nourlcn.ownlinux.net/search/label/MapReduce">http://nourlcn.ownlinux.net/search/label/MapReduce</a><br /><br />  关于并行编程，比较好的资源：<br /><ul><li><a href="http://www.mcs.anl.gov/~itf/dbpp/text/book.html">http://www.mcs.anl.gov/~itf/dbpp/text/book.html</a></li><li><a href="https://computing.llnl.gov/tutorials/parallel_comp/">https://computing.llnl.gov/tutorials/parallel_comp/</a></li></ul>
