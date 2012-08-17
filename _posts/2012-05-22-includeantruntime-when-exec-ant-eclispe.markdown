--- 
title: "\"includeantruntime\" when exec ant eclispe"
type: post
layout: post
tags: 
- Ant
- Eclipse
---
<div style="font-family: inherit;"><span style="font-size: small;">编译hadoop 1.0.0时，为了导入eclipse，执行ant eclipse这个target，提示有几个includeantruntime warnning.<br /><br />搜了一下，发现是ant1.8的问题，正好我机器上的ant是1.8.3.<br />(可以使用ant -version查看自己的ant版本)<br /><br />暂时的解决方式：<br />在build.xml的javac命令中加入参数</span></div><blockquote><span style="font-size: small;"><javac <span style="color: red;">includeantruntime="false"</span> ...>...</javac></span></blockquote>url: <a href="http://url.ownlinux.net/N3FRZ">http://url.ownlinux.net/N3FRZ</a><br /><div style="font-family: inherit;"><span style="font-size: small;"><br /></span></div>
