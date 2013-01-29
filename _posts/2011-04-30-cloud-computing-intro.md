--- 
title: !binary |
  5LqR6YeM6Zu+6YeM55yL6K6h566X

type: post
layout: post
tags: 
- Cloud
- Speech
---
我也凑个热闹，来忽悠忽悠云计算.<br />当然，我也不懂，只是从周围的书里、帖子里瞥了几眼，就出来献丑了…<br />网络是个好东西，知识距离你只有几个链接.<br />以下是相关的几点笔记:<br /><h3><b>虚拟化</b></h3><blockquote>这块内容比较多，单独作为一个post来写吧.<br />见<a href="http://u.ownlinux.net/nourl/2011/about-virtualization.html" title="http://u.ownlinux.net/nourl/2011/about-virtualization.html">http://u.ownlinux.net/nourl/2011/about-virtualization.html</a></blockquote><h3><b>MapReduce</b></h3><blockquote>MapReduce的思想来源于函数式编程。<br />MR是一个分布式处理框架。<br />Google引入MR是为了并行化处理海量数据（搜索网页）。<br />MapReduce的优点：<br /><ul><li>可以处理大规模数据（big data） </li><li>简化程序员开发任务 </li><li>可以方便处理并行、负载均衡的问题 </li><li>扩展方便 </li></ul></blockquote> <b>GFS</b><br /><a href="http://www.flickr.com/photos/56075931@N04/5660633846/" title="Google-file-system"><img alt="Google-file-system" border="0" src="http://farm6.static.flickr.com/5141/5660633846_4868da55da.jpg" style="display: block; float: none; margin-left: auto; margin-right: auto;" /></a><br /><blockquote>即Google File System, 是一套分布式文件系统, GFS中有两种节点：<br /><ul><li>Chunk：用于存储数据，节点上的数据文件默认以大小为64MB Chunk的方式存储，每个Chunk有唯一64位标签（标签存储在Master节点中） </li><li>Master：存储与数据相关的元数据，处理元数据相关的操作，负载负载均衡。Master对数据块的管理是通过元数据实现的，通过元数据了说对应数据块的位置信息等。<b>当Master节点出现问题时，备份Master节点继续工作</b> </li></ul>GFS的优点：<br /><ul><li>可以存储海量数据，吞吐量大 </li><li>可扩展 </li></ul>缺点：<br />系统对数据的随机访问比较慢</blockquote><h3><b>NoSQL</b></h3><blockquote>在NoSQL中，最重要的概念就是数据模型和CAP理论：<br /><b>+ 数据模型 </b><br />  NoSql的数据存储模型主要有以下三种：<br />++ Column模型<br />优点：传统的数据库一行就是一个记录，Column对于涉及列比较多的查询有优势<br />缺点：…..<br />++ Key-Value模型<br />优点：快速查询，支持大量数据，可并发性强<br />缺点：不支持负责查询操作<br />++ Document模型<br />也是Key-Value的映射模式，但是Value往往是一个文件或者页面(比如Google中的关键字Key对应的Value是个网页)<br /><b>+ CAP理念 </b><br />所谓CAP理论,它的意思是一个分布式系统不能同时满足一致性，可用性和分区容错性这三个需求，最多只能同时满足两个。<br />(引自<a href="http://bit.ly/jzrNBE" target="_blank" title="http://bit.ly/jzrNBE"><b>http://bit.ly/jzrNBE</b></a>)<br />++ 一致性（Consistency）<br />  任何一个读操作总是能读取到之前完成的写操作结果，也就是在分布式环境中，多点的数据是一致的；<br />++ 可用性（Availability）<br />  每一个操作总是能够在确定的时间内返回，也就是系统随时都是可用的。<br />++ 分区容忍性（Partition Tolerance）<br />  在出现网络分区（比如断网）的情况下，分离的系统也能正常运行。</blockquote>Note: MongDB是NoSql数据库中的代表，基于分布式文件存储系统，支持云计算层次上的扩展。 <br /><h3><b>BigTable</b></h3><blockquote>  BigTable是Google开发的一套数据库系统，基于GFS，这套数据库系统采用非SQL形式进行存储。<br />  BigTable采用Map的映射方式存储数据，将海量的数据通过行关键字、列关键字和时间戳三维映射到BigTable数据库中。<br />Note:<br /><ul><li>列可以根据相似性进行分组 </li><li>基于GFS </li><li>类似BigTable的系统：Hbase（Hadoop）Cassandra（Facebook） </li></ul>BigTable的优点：<br /><ul><li>扩展性好（行、列、时间戳三维结构） </li></ul></blockquote><h3><b>Chubby</b></h3><blockquote>分布式锁服务<br />在海量数据和海量用户的情况下（比如Google），如何对数据中的某个节点进行加锁和解锁（比如N个人同时访问1个数据，N很大）？<br />Note:<br /><ul><li>扩展阅读：<a href="http://zh.wikipedia.org/wiki/Paxos算法" target="_blank">Leslie Lamport-Paxos算法</a> （分布式选举算法） </li><li>Hadoop中的实现：ZooKeeper </li></ul></blockquote><h3><b>Other</b></h3><blockquote><i>决定最近的一段时间来学习一下传说中的云，欢迎继续关注.</i></blockquote>