--- 
title: Python2.7.3常用Build-in Functions
type: post
layout: post
tags: 
- Python 
---

Build-in大概是*内建*的含义（这是我很久之前看一本python的书中，Build-in是这么翻译的），这里列一下Python2.7.3中常用的内建函数，有些带示例，有些不带（还是我太懒了）。主要参考[Python 2.7.3 documentation](http://docs.python.org/library/functions.html)。
----

+ abs()
> 求绝对值的函数

+ all()
> 如果参数中所有元素均为True，返回True，否则返回False

+ any()
> 参数中只要存在一个元素为True，返回True，否则返回False

+ apply()
> 不推荐使用。

+ basestring()
> basestring是str和unicode的superclass，比较obj与basestring相当于比较obj与(str,unicode)

+ bin()
> arg是一个整数，返回它的二进制形式字符串

+ bool()
> 将参数转换成布尔类型

+ buffer()
+ bytearray()
+ callable()
> arg是obj，如果该obj可被调用，返回True。

+ chr()
> 参数是int类型，返回该int对应ASCII表中对应的字符串

+ classmethod()
>用法：
>第一个参数必须是class对象，可以通过类名或者类的实例来调用该方法。如果是子类（派生类）调用父类的classmethod，第一个参数是子类（派生类）对象。
>等价于: 
>也可以使用修饰符*@classmethod* 来定义一个classmethod

		class C:
			@classmethod
			def method(class,args):
				pass

+ cmp()
>用法：cmp(x,y),比较x和y两个对象，根据xy的大小关系返回正值(x>y)、负值(x<y)、或者零(x==y)

+ coerce()
+ compile()
+ complex()
> 构造一个复数类型

+ delattr()
> delattr(obj,name) 删除obj中name属性的值。 相当于del obj.name

+ dict()
> 构造一个dict对象

+ dir()
>没有参数时，返回当前定义的local scope的所有变量；
有参数时，返回参数obj的所有属性。

+ divmod()
> 

+ enumerate()
> enumerate(sequence, start=0),传入一个sequence,输出一个enumerate对象。该对象每个元素是tuple，每个tuple包括两部分，tuple[0]是tuple[1]在sequence中的index，可以通过start定义index是否从0开始。
		\>\> seasons = ['Spring', 'Summer', 'Fall', 'Winter']
		\>\> list(enumerate(seasons))
		[(0, 'Spring'), (1, 'Summer'), (2, 'Fall'), (3, 'Winter')]		

+ eval()
+ execfile()
+ file()
> 构造一个file的对象，很常用。例如f=file(filename,mode)

+ filter()
> 函数式编程风格，传入一个function和一个序列，该序列中每个元素作为function的参数，若结果为True，输出该值。

+ float()
> 构造一个float类型对象。

+ format()
> 格式化字符串。类似C中printf("%d\t%f",int_num, float_num)


+ frozenset()
+ getattr()
+ globals()
+ hasattr()
+ hash()
+ help()
+ hex()
+ id()
+ __import__()
> 导入，python文件开头的import *或者from * import *实际上是使用的这个函数来导入其他py模块中的变量。

+ input()
+ int()
> 整型，常用于类型转换。

+ intern()
+ isinstance()

##用法： isinstance(obj,classinfo)

>如果obj是classinfo的一个实例，返回true，比如
		isinstance('a',str)
>Return true.

+ issubclass()
+ iter()
+ len()
> 求长度，比如一个list [1,2,3]，其长度len([1,2,3])=3

+ list()
+ locals()
+ long()
+ map()
+ max()
+ memoryview()
+ min()
+ next()
+ object()
+ oct()
+ open()
+ ord()
+ pow()
+ print()
+ property()
+ range()
+ raw_input()
+ reduce()
+ reload()
+ repr()
+ reversed()
+ round()
+ set()
+ setattr()
+ slice()
+ sorted()
+ staticmethod()

>相当与C++/Java中的静态方法。

>用法:

> *staticmethod(function)*,传入的参数是一个function，第一个参数不需要传入self,返回的是该*function*的static method. 可以通过类名或者类的实例来调用该方法，如果通过类的实例(instance)来调用，除了该instance所属的class信息外，instance信息无任何作用，相当于通过instance的class来调用。

>等价于:

		class C:
			@staticmethod
			def method():
				pass

*@staticmethod*是python2.4后新增的修饰符，

+ str()
+ sum()
+ super()
+ tuple()
+ type()
+ unichr()
+ unicode()
+ vars()
+ xrange()

+ zip()

## 用法 zip(iter_args)

>传入一个可迭代对象，返回一个list，其中每个元素都是一个tuple，举例
		zip('hello') --> [('h',),('e',),('l',),('l',),('o',)]
		zip([1,2,3],[4,5,6]) --> [(1,4),(2,5),(3,6)]
