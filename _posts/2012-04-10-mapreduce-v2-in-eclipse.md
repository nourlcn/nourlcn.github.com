--- 
title: Run YARN(MapReduce V2) in Eclipse
type: post
layout: post
tags: 
- Eclipse
- Hadoop
- MapReduce
- Maven
- YARN
---

About half a month ago, I write this post as an answer of question ["New MapReduce Architecture and Eclipse"](http://stackoverflow.com/questions/7067785/new-mapreduce-architecture-and-eclipse).

I post this article here for the reason that I found many people asked how to build and run/deploy YARN(MapReduce V2 in Hadoop 0.23) in eclipse in forum or mail list.

URL: [http://stackoverflow.com/a/8622353/1056556](http://stackoverflow.com/a/8622353/1056556)

I have try to run YARN (The next generation of mapreduce) on my host for several days.
Firstly, get the source code from apache.org using svn or git. take svn for example:

        svn co https://svn.apache.org/repos/asf/hadoop/common/branches/branch-0.23.0

then, generate eclipse related files using maven (you should configure manve3 on your host before this step.)

        mvn test -DskipTests
        mvn eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=true
        
and now you could import existing maven project into eclipse.(you should configure maven plugin in eclipse first.) In eclipse: File-> Import existing Maven projects

        Choose "Existing Projects into Workspace"
        Select the hadoop-mapreduce-project directory as the root directory
        Select the hadoop-mapreduce-project project
        Click "Finish"

I have try many times due to class_path/build_path was not correctly configured and not include all dependency package/class. Try to "Add External Class Folder" and select the build directory of the current project Under project Properties if you meet the same problem as me.

## update:2012-03-15

I could run YARN(the same as Hadoop0.23) in eclipse now.
Firstly, you should compile/build Yarn Successfully by exec command:

        mvn clean package -Pdist -Dtar -DskipTests

For the reason that I only care about how to debug YARN, I run HDFS on my single host in the linux terminal,not in eclipse.

        bin/hdfs namenode -formate -clusterid your_hdfs_id
        sbin/hadoop-daemon.sh start namenode
        sbin/hadoop-daemon.sh start datanode
        
and then, import hadoop 0.23 into eclipse and find resourcemanager.java, the next step is to run this class in eclipse. Detail steps:

 + right click, and select run as application
 + add new configuration to run this class, in the arguments part, fill in with content:
--config your_yarn_conf_dir (the same as HDFS conf dir)
 + click run button, you will find resourcemanager output in eclipse console.

Running Nodemanaer in eclipse is the same as running Resourcemanager. Add new configuration and fill argumemts with "--config your_yarn_conf_dir", then press run button.
Happy Coding~!