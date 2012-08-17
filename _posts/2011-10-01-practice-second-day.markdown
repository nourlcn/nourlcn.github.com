--- 
title: !binary |
  5a6e5Lmg56ys5LqM5aSp

type: post
layout: post
tags: 
- Life
- !binary |
  55Sf5rS754K55ru0

---
本该昨天晚上总结的.<br />但昨天下班后赶紧回去收拾一下，今天坐了12个小时的龟速大巴才到家，现在补上吧.<br /><br />实习第二天，上午对第一天的工作进行了融合，写了一个shell脚本将数据抓取、导入Hive、MapReduce处理、导入Mysql等步骤进行自动处理.<br />中间因为不熟悉Hive的查询、join用法等花费了一些时间.<br /><br />中午吃饭时，看见开复童鞋进来貌似拿了个包子回办公室了，哈哈~<br /><br />下午写了个py文件，生成指定格式的测试log file，预期目标是生成300G的文件在hadoop集群上测试，考虑到实际的数据量可能不需要这么大，先设置i循环为5亿，生成50G的big file.<br /><br />因为我使用shell远程链接服务器进行开发，shell session过期后程序可能会中断，因此学了一下daemon进程的编写，下班前将py程序改成daemon进程执行.<br /><br />再一次感慨，实习所接触的东西比较实在，比在实验室强多了.
