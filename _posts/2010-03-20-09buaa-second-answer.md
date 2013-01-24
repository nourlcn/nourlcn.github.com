--- 
title: !binary |
  MDlCVUFBLeacuuivleesrDLpopg=

type: post
layout: post
tags: 
- BUAA
- Code
---
<pre>//数组排序<br/>//输入一个数组的值,求出各个值从小到大排序后的次序。<br/>//输入:输入的第一个数为数组的长度,后面的数为数组中的值,以空格分割<br/>//输出:各输入的值按从小到大排列的次序。<br/>//sample<br/>//input:<br/>//4<br/>//-3 75 12 -3<br/>//output:<br/>//1 3 2 1<br/><br/>#include ....<br/><br/>int main(void)<br/>{<br/>int a[20],b[20];<br/>int pre;              //上一个编码的值是多少<br/>int num = 1;     //编号<br/>int i = 0,j=0;<br/>int p=-1;           //位置<br/>int n,count=0;<br/>scanf("%d",&n);<br/><br/>while(i<=n-1)<br/>{<br/>scanf("%d",&a[i]);<br/>i++;<br/>}<br/><br/>//初始化排序数组<br/>for(i=0;i<=19;i++)<br/>{<br/>b[i] = -1;<br/>}<br/><br/>while(countpre)<br/>{<br/>num++;<br/>b[p]=num;<br/>pre = a[p];<br/>}<br/><br/>count++;<br/>}<br/><br/>for(i=0;i<=n-1;i++)<br/>{<br/>printf("%4d",b[i]);<br/>}<br/><br/>return 0;<br/>}</pre>

