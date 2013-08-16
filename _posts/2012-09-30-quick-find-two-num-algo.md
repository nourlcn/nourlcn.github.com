--- 
title: 算法：快速寻找满足条件的两个数
type: post
layout: post
tags: 
- Algorithms
---

这道题来自 <a href="http://www.amazon.cn/gp/product/B0016K8XGQ/ref=as_li_tf_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0016K8XGQ&linkCode=as2&tag=ownlinux-23">《编程之美:微软技术面试心得》</a><img src="http://ir-cn.amazon-adsystem.com/e/ir?t=ownlinux-23&l=as2&o=28&a=B0016K8XGQ" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
 的2.12，“能否找出一个数组中的两个数，让这两个数之和等于一个给定的值sum，假设这个数组中肯定存在至少一组符合条件的解。”

书中给出了先排序，后遍历的O(N*logN)+O(N)的解法，想了一下，我觉得这样解似乎也可以，时间复杂度为O(N)，但是空间复杂度要大，以空间换时间：

 1. 开辟一个大小为O(sum)的数组tmp[sum]，初始化每个元素为-1
 1. 遍历原数组，对数组中的每个元素x：
> +  若x<=sum/2; 标记tmp[x]=1;
> +  若x>sum/2; 标记tmp[x]=1，如果tmp[sum-x]==1,输出x和sum-x,找到符合条件的两个数；
 
 1. 这个算法的时间复杂度O(sum)+O(n) = O(n)，空间复杂度为O(sum)

这个解法的限制：

+ 所有的数均为自然数；
+ sum 不要太大，不然空间复杂度太大；


可能有用的链接：

- <a href="http://www.amazon.cn/gp/product/B0016K8XGQ/ref=as_li_tf_tl?ie=UTF8&camp=536&creative=3200&creativeASIN=B0016K8XGQ&linkCode=as2&tag=ownlinux-23">编程之美:微软技术面试心得</a><img src="http://ir-cn.amazon-adsystem.com/e/ir?t=ownlinux-23&l=as2&o=28&a=B0016K8XGQ" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />


