--- 
title: Python Ctype库介绍
type: post
layout: post
tags: 
- Ctype
- Python
---
Ctype模块提供三种动态链接库加载方法，区别在于链接库中函数的调用方式、返回方式不同：<br /><ul><li>cdll()</li></ul>  用于加载遵循cdecl调用约定的动态链接库。<br />  cdecl约定函数的参数列表从右向左入栈，由函数调用者负责清除栈上的参数，一般使用add esp,num语句。 <br /><ul><li>windll()</li></ul>  用于加载遵循stdcall调用约定的动态链接库，stdcall是MS Win32 API使用的调用约定。<br />  与cdll()相比，stdcall 的函数在返回时前会清除栈上数据，不需要调用者add esp，num的形式清除栈上数据。<br /><ul><li>oledll()</li></ul>  类似于windll()，但调用动态链接库函数的时候，假定函数会返回一个windows HRESUlT错误码，反馈错误信息。 <br /><br />关于Ctype库的更多介绍，看python docs：<a href="http://docs.python.org/library/ctypes.html"><span style="font-size: small;"><tt><span>ctypes</span></tt> — A foreign function library for Python</span></a>
