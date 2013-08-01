--- 
title: 'includeantruntime' when exec ant eclispe
type: post
layout: post
tags: 
- Ant
- Eclipse
---

编译hadoop 1.0.0时，为了导入eclipse，执行ant eclipse这个target，提示有几个*includeantruntime warnning*.

搜了一下，发现是ant1.8的问题，正好我机器上的ant是1.8.3.(可以使用ant -version查看自己的ant版本)

#### 暂时的解决方式

在build.xml的javac命令中加入参数

		includeantruntime="false" ...>...
