--- 
title: Python中的方法解析顺序
type: post
layout: post
tags: 
- Python
---

Python里面出现多重继承时，新式类和旧式类对方法的解析顺序是不同的，先看两个例子：

例子1：

		>>> class BaseBase:
			def method(self):
				print "basebase"
				
		>>> class Base1(BaseBase):
			pass
		
		>>> class Base2(BaseBase):
			def method(self):
				print "base2"
				
		>>> class MyBase(Base1, Base2):
			pass
		
		>>> my = MyBase()
		>>> my.method()
		basebase

例子2：

		>>> class BaseBase(object):
			def method(self):
				print "basebase"
				
		>>> class Base1(BaseBase):
			pass
		
		>>> class Base2(BaseBase):
			def method(self):
				print "base2"
		
		>>> class MyBase(Base1, Base2):
			pass
		
		>>> my = MyBase()
		>>> my.method()
		base2
			
这两个例子代码几乎相同，唯一的区别是BaseBase的定义方式不同，例子2中该类继承自object，是Python2.3后的新式类定义方式.

例子1为旧式类的定义方式，使用了旧风格的MRO(方法解析顺序)，其解析方法的顺序是对于继承的父类“从左到右深度优先”搜索方法；
例子2使用了新风格的[基于Dylan构建的MRO](http://www.opendylan.org)(方法解析顺序), 其解析顺序是一个递归查找的过程，针对例子2，使用[C3符号](http://en.wikipedia.org/wiki/C3_linearization)表示方法的搜索顺序为:

	L(MyBase(Base1, Base2)) = MyBase + merge(L(Base1)+L(Base2)+Base1+Base2)	[i]

或者，根据[http://www.python.org/download/releases/2.3/mro/](http://www.python.org/download/releases/2.3/mro/)，搜索顺序等价表示为:

	L(MyBase(Base1, Base2)) = MyBase + L(Base1,Base2) = MyBase + Base1 + Base2 + L(BaseBase)	[ii]

针对例子1和例子2，结果为什么不同呢？

对于例子1，调用method方法时，由于MyBase不存在method方法，使用深度优先，先搜索Base1中的method，Base1中也不存在method方法，继续搜索Base1的父类中的method，找到该方法，所以结果打印为“basebase”；

对于例子2，根据新的MRO顺序，由[ii]可以看到，搜索method顺序是MyBase->Base1->Base2[->BaseBase]，在Base中找到了method，所以不会去搜索BaseBase中的method，最终调用的是Base2中的method，所以打印结果为“base2”

提醒：因为MRO的差异，在代码中混杂新式类的定义和旧式类的定义可能会导致混乱的方法调用。


本文参考资料：

+ Python高级编程
+ [http://www.python.org/download/releases/2.3/mro/](http://www.python.org/download/releases/2.3/mro/)