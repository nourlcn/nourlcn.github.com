---
layout: default
title: Programmer Tips
---

#### C

+ 函数声明时，如果函数没有float,short,char类型的参数，声明时形参可以省略；函数定义时不可以省略；

+ 如果一个未声明的标识符后跟一个（，那么它将被视为一个返回整型的函数；

#### Python
+ 函数式编程:
 + lambda args:expression
 + apply(function[,args]) 逐步淘汰，不推荐使用
 + filter(function,seq)
 + map(function,seq)
 + reduce(function,seq)
 + 偏函数

#### LINUX
+ clean file system cache: `echo 3 > /proc/sys/vm/drop_caches`

#### ZMQ|ZeroMQ
+ MultiProcessing|MultiThreading: 
ZMQ的多线程程序并不一定比单线程的快，因为存在大量的context上下文切换。
在多核的机器上，将每个process绑定到一个core上，避免context切换，这样可以提升ZMQ的性能。
