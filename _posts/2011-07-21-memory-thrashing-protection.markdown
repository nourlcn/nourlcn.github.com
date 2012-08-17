--- 
title: Memory Thrashing Protection
type: post
layout: post
tags: 
- Parallel
- System
---
<p>Title:Memory Thrashing Protection in Multi-Programming Environment</p> <p><strong>+ Memory Management for multiprogramming</strong></p> <blockquote> <p>.interactive programs sharing space</p> <p>.global LRU</p> <p>.Thrahing: </p> <p>    memory requests of multiple program exceed available user space</p> <p>  .. No program is able to establish its working set</p> <p>  .. page faults</p> <p>  .. low CPU utilization</p></blockquote> <p><strong>+Some Insights into Thrashing</strong></p> <blockquote> <p>global LRU replacement generates two types of LRU pages for replacement:</p> <p>. True LRU pages</p> <p>. False LRU pages</p> <p>    programs have not been able to access due to required working set is not set up yet.</p> <p>BUT: <strong>os can not distinguish true or false LRU pages.</strong></p></blockquote> <p><strong>+Token-based Thrashing Protection Facility</strong></p> <blockquote> <p>Token-ordered LRU,renamed as Swap token,was formally adopted in Linux Kernel 2.6.9</p></blockquote> <p>Evolution of swap token in Linux Kernel</p> <blockquote> <p>. First version: token is randomly given to a process</p> <p>. //now </p></blockquote> <p>更多信息请参考：</p> <blockquote> <p>1. linux/mm/thrash.c代码</p> <p>2. <strong>Swap Token </strong>is introduced in book <Understanding Linux Kernel> 3rd edition</p> <p>3. 《Professional Linux Kernel Architecture》</p> <p>4. False LRU page concept is quoted in OS wiki</p></blockquote>
