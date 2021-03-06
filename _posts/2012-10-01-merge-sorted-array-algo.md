--- 
title: 算法：merge两个有序子数组
type: post
layout: post
tags: 
- Algorithms
---

##### 题目
数组al[0,mid-1] 和 al[mid,num-1]，都分别有序。将其merge成有序数组al[0,num-1]，要求空间复杂度O(1)

##### 我的思路：

首先，O(1)的空间复杂度表明需要的临时存储空间为一个常量，不随被处理数据量n的大小而改变. 

假设两个子数组是有序的，数按照升序排列。那么只需要将al[mid,num-1]中的每一个数字x，与al[i] （i属于0到mid-1）作比较，若x>a[i], i++即可，若x<a[i]，使用临时变量tmp保存a[i]，将x插入a[i]的位置，将tmp插入al[mid,num-1]中的x至末尾之间

（有序的子数组查找插入的位置用时O(lg N)，插入元素平均需要移动N/2的元素。针对这道题目的情况，N是逐渐变小的）。

这种做法只需要一个临时变量保存al[0,mid-1]中需要替换出来的值即可。空间复杂度为O(1).

##### 这个解法的限制：

+ 计算时间复杂度比较复杂，但查找和插入都是针对有序子数组，使用二分查找的时间复杂度为O(lg N), 插入的时间复杂度为O（N），最终的时间复杂度应该可以接受。


