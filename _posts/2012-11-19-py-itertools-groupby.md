--- 
title: groupby in itertools
type: post
layout: post
tags: 
- Python
---

itertools里有个groupby函数，先举两个例子如何使用它：

例子1：

		>>> for i,j in groupby("abbcdddef"):
				print i,[x for x in j]

		a ['a']
		b ['b', 'b']
		c ['c']
		d ['d', 'd', 'd']
		e ['e']
		f ['f']
		
例子2：

		>>> for i,j in groupby("abbcdddef", lambda x:x*2):
				print i,[x for x in j]
			
		aa ['a']
		bb ['b', 'b']
		cc ['c']
		dd ['d', 'd', 'd']
		ee ['e']
		ff ['f']
		
groupby接受两个参数，一个序列lst和一个(可选的)函数func，该func以lst中的每一个元素为参数，lst中的每个元素经过函数func的计算结果为res；

groupby的返回值(i,j)，i是func的计算结果，即res；j是一个迭代器，j的内容是经过func计算值相同的lst中的元素；



