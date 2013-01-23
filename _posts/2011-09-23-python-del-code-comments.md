--- 
title: !binary |
  W1B5dGhvbl3liKDpmaTku6PnoIHkuK3nmoTms6jph4o=

type: post
layout: post
tags: 
- Python
---

写了个Python脚本，可以删除代码中的注释。

这个功能在做某些项目的时候很需要，你懂的。

目前支持删除`//`注释、`/**/`单行及跨行注释，代码中嵌套的`/**/`注释三种。

对于py语言中#注释等，只需要修改正则表达式，将//.*替换成#.*即可）

代码托管到[Github](https://github.com/nourlcn/tools/blob/master/delete_comments.py)

### 用法：

1. 将代码放入src下的input目录
1. 在src目录执行python delete_comments.py

匆忙完成，没经过充分测试，欢迎submit bugs
