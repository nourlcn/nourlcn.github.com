--- 
title: Google Percolator Note
type: post
layout: post
tags: 
- Cloud
- Google
---
<p>Percolator是Google用于配合MapReduce进行索引的系统。</p>  <p>现已经应用到了Google索引系统中。</p>  <p><a title="Percolator" href="http://www.flickr.com/photos/56075931@N04/5663394914/"><img style="display: block; float: none; margin-left: auto; margin-right: auto" alt="Percolator" src="http://farm6.static.flickr.com/5105/5663394914_2426a3c7dd.jpg" border="0" /></a></p>  <p align="center">Percolator框架</p>  <p>MapReduce在对数据进行索引的时候，需要对数据全部整理一遍，对于Google存储了海量的数据，这样效率低。</p>  <p>当海量数据中只有少部分更新，使用MapReduce显然存在问题。Percolator进行的是增量索引，只对更新的部分进行整理，Percolator也是为解决这一问题而提出的。</p>  <p>关于Percolator，这只是个引子…. 继续学习ing</p>
