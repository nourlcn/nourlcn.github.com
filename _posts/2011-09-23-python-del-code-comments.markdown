--- 
title: !binary |
  W1B5dGhvbl3liKDpmaTku6PnoIHkuK3nmoTms6jph4o=

type: post
layout: post
tags: 
- Python
---
写了个Python脚本，可以删除代码中的注释。<br />这个功能在做某些项目的时候很需要，你懂的。 <br /><br />目前支持删除//注释、/**/单行及跨行注释，代码中嵌套的/**/注释三种。<br />（对于py语言中#注释等，只需要修改正则表达式，将//.*替换成#.*即可）<br /><br />代码托管到github：<a href="https://github.com/Nourl/CodeAnalysis/blob/master/src/delete_comments.py">https://github.com/Nourl/CodeAnalysis/blob/master/src/delete_comments.py</a><br /><br />用法：<br /><ol><li> 将代码放入src下的input目录</li><li>在src目录执行python delete_comments.py</li><li>OK! </li></ol>匆忙完成，没经过充分测试，欢迎submit bugs
