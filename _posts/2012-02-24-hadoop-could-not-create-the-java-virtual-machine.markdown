--- 
title: "Hadoop: Could not create the Java virtual machine"
type: post
layout: post
tags: 
- Hadoop
---
Hadoop启动时提示<span style="background-color: white; font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif; line-height: 1.3em;">Unrecognized option: -jvm 和 Could not create the Java virtual machine</span><br /><span style="background-color: white; font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif; line-height: 1.3em;"><br /></span><br /><span style="font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif;"><span style="line-height: 20px;">原因：</span></span><br /><span style="font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif;"><span style="line-height: 20px;">我使用root帐号配置的hadoop，root帐号下运行 java，可以看到提示中没有-jvm的选项。</span></span><br /><span style="font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif;"><span style="line-height: 20px;"><br /></span></span><br /><span style="font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif;"><span style="line-height: 20px;">解决方式：</span></span><br /><span style="font-family: 'Helvetica Neue', Arial, Helvetica, 'Nimbus Sans L', sans-serif;"><span style="line-height: 20px;">创建一个普通权限的用户user，使用普通权限用户user来配置部署，解决～！</span></span>
