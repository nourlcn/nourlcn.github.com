--- 
title: sizeof and strlen 
type: post
layout: post
tags: 
- C
---

#### sizeof和strlen

+ sizeof是操作符，结果为size_t类型，size_t在头文件中通过typedef定义，为unsigned int类型。strlen是函数；

+ sizeof的参数可以是：类型、变量、函数，strlen的参数只能是char*类型；

+ 数组名字作为参数时候，sizeof返回针对数组的操作结果，而strlen将数组名作为纯指针对待；

+ sizeof一般是在编译的时候计算结果，strlen是在执行时计算结果；

+ 当使用结构体或变量时，sizeof返回实际大小，计算结构体大小时要考虑内存对齐问题；

+ sizeof操作符不能用于不完全类型（有未知大小数据的数据类型、void等）、位字段。
