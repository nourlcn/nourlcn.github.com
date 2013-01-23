--- 
title: Reason About"NF_IP*** undeclared"
type: post
layout: post
tags: 
- Code
---
今天编写关于Nerfilter的一个内核模块，总是遇到 ‘NF_IP_*****’ undeclared (first use in this function) ，很是郁闷。<br/><br/>原来，2.6内核与2.4内核不同，在2.6.22内核以后，NF_IP_*****等被放入了用户态，内核模块应该使用NF_INET_*****代替以前使用的NF_IP_******
