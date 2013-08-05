--- 
title: Hadoop 'class not found'
type: post
layout: post
tags: 
- Hadoop
---

<br />编译Hadoop后，单个节点部署测试成功。<br />部署到集群测试时，启动时提示ClassNotFoundException：<br /><br /><div style="background-color: black; color: #38761d;">Caused by: java.lang.ClassNotFoundException: org.apache.hadoop.conf.Configuration<br />    at java.net.URLClassLoader$1.run(URLClassLoader.java:202)<br />    at java.security.AccessController.doPrivileged(Native Method)<br />    at java.net.URLClassLoader.findClass(URLClassLoader.java:190)<br />    at java.lang.ClassLoader.loadClass(ClassLoader.java:307)<br />    at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:301)<br />    at java.lang.ClassLoader.loadClass(ClassLoader.java:248)<br />Could not find the main class: org.apache.hadoop.yarn.server.resourcemanager.ResourceManager.  Program will exit.</div><br />原因分析：<br /><ul><li>class not found一般都是classpath配置的问题，找不到相应的jar包；</li><li>在yarn-env.sh内配置classpath，启动时还是不给里，resourcemanager找到了，nodemanager还是找不到；</li><li>看启动脚本bin/yarn，查看yarn的classpath，发现对应的就是系统的CLASSPATH；</li></ul><span style="background-color: black; color: #38761d;"># figure out which class to run</span><br /><span style="background-color: black; color: #38761d;">if [ "$COMMAND" = "classpath" ] ; then</span><br /><span style="background-color: black; color: #38761d;">  if $cygwin; then</span><br /><span style="background-color: black; color: #38761d;">    CLASSPATH=`cygpath -p -w "$CLASSPATH"`</span><br /><span style="background-color: black; color: #38761d;">  fi</span><br /><span style="background-color: black; color: #38761d;">  echo $CLASSPATH</span><br /><span style="background-color: black; color: #38761d;">  exit</span><br /><br /><br />解决方法：<br />将编译出的jar包方到lib或者modules目录下（自己建立一个），配置系统的classpath<br /><span style="background-color: black; color: #38761d;">export CLASSPATH=$CLASSPATH:YOUR_LIB_DIR/*.jar</span><br /><br />再启动，没问题了。

