--- 
title: "Oozie \xE2\x80\x94 What Why and How"
type: post
layout: post
tags: 
- Hadoop
- Oozie
---
<stationery>  </stationery><br /><ul><li>Oozie是什么？ </li></ul><div style="text-indent: 2em;">Oozie最初是Yahoo！为Hadoop开发的一个工作流调度器，一个工作流有多个Job组成。它允许用户提交由多个Job组成的工作流配置文件，这些Job既可以顺序执行，也可以并行执行，还可以配置其中的Job定时执行、出错重新执行等。</div><div style="text-indent: 2em;">Oozie提供了Java Client API和Web Service   API以及命令行接口,使用简单。</div><div style="text-indent: 2em;">现在是Apache的一个开源项目。</div><div style="text-indent: 2em;"></div><ul><li>为什么使用Oozie？ </li></ul><div style="text-indent: 2em;">主要是为了更方便、自由的使用Hadoop，提交作业。</div><div style="text-indent: 2em;">对一个集群中每天有大量左右需要提交执行的情况来说，使用Oozie管理这些Job很方便。</div><div style="text-indent: 2em;">另外一点就是，如果有Job执行出错，可以配置Oozie重新执行这些Job。</div><div></div><ul><li>如何使用Oozie？<ol><li>首先需要执行的Job的配置写入workflow.xml，配置中需要指明每个Job的输入文件、输出文件、输出Reader、输出Writer、Mapper、Reducer、Job的执行参数</li><li>然后提交这个xml文件</li><li>配置workflow的property （指明Name     Node、JobTraker、job执行过程中所使用的jar包的location）</li></ol></li></ul><div style="text-indent: 2em;"></div><div style="text-indent: 2em;">关于oozie的更多信息，请参考：<br />    <a href="http://yahoo.github.com/oozie/">http://yahoo.github.com/oozie/</a><br />    <a href="http://yahoo.github.com/oozie/releases/3.1.0/">http://yahoo.github.com/oozie/releases/3.1.0/</a><br />    <a href="http://incubator.apache.org/oozie">http://incubator.apache.org/oozie</a></div><div></div><div>                  </div><div>--------------<br />本文地址：<a href="http://nourlcn.ownlinux.net/2011/11/oozie-what-why-and-how.html">http://nourlcn.ownlinux.net/2011/11/oozie-what-why-and-how.html</a></div><div><a href="https://twitter.com/nourlcn">https://twitter.com/nourlcn</a> </div><div>2011-11-20 </div>
