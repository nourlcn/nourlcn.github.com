--- 
title: 编译部署Hadoop 0.23
type: post
layout: post
tags: 
- Hadoop
- YARN
---

+ 下载hadoop 0.23版本，建议使用SVN
        
        svn checkout http://svn.apache.org/repos/asf/hadoop/common/tags/release-0.23.0-rc0/ 
        
+ 进入release-0.23.0-rc0，查看INSTALL.TXT，提示编译hadoop0.23的前提： 
  + Unix System 
  + JDK 1.6 
  + Maven 3.0 
  + Forrest 0.8 (if generating docs) 
  + Findbugs 1.3.9 (if running findbugs) 
  + ProtocolBuffer 2.4.1+ (for MapReduce) 
  + Autotools (if compiling native code) 
  + Internet connection for first build (to fetch all Maven and Hadoop dependencies)

+ JDK是必须的，安装配置JDK，maven3.0并配置PATH变量
+ 安装ProtocolBuffer，使用以下命令编译： 

        mvn clean install -DskipTests 
        cd hadoop-mapreduce-project 
        mvn clean install assembly:assembly -Pnative 
        
或者直接下载编译好的hadoop版本，以上步骤省略，直接从配置环境变量开始配置，下载地址：

        http://mirror.bjtu.edu.cn/apache/hadoop/common/hadoop-0.23.0/hadoop-0.23.0.tar.gz
        
下载后解压 tar -zxvf hadoop-0.23.0.tar.gz


+ 配置环境变量（使用export）

        $HADOOP_COMMON_HOME （指向common目录）
        $HADOOP_MAPRED_HOME   （指向mr目录）
        $YARN_HOME（与HADOOP_MAPRED_HOME相同）
        $HADOOP_HDFS_HOME         （指向HDFS目录）
        $YARN_HOME 
        $JAVA_HOME 
        $HADOOP_CONF_DIR （指向conf目录）
        $YARN_CONF_DIR（与$HADOOP_CONF_DIR 相同）

+ 编写mapred-site.xml的属性及值

     mapreduce.cluster.temp.dir
     mapreduce.cluster.local.dir
   
+ 编写yarn-site.xml，host换成你机器上hostname的输出值，port为端口号

        属性：yarn.resourcemanager.resource-tracker.address
        值：host:port
           
        属性：yarn.resourcemanager.scheduler.address
        值：host:port
           
        属性：yarn.resourcemanager.scheduler.class
        值：org.apache.hadoop.yarn.server.resourcemanager.scheduler.capacity.CapacityScheduler
        
        属性：yarn.resourcemanager.address
        值：host:port
           
        属性：yarn.nodemanager.local-dirs
        值为：the local directories used by the nodemanager
          
        属性：yarn.nodemanager.address
        值：host:0.0.0.0:port
            
        属性：yarn.nodemanager.resource.memory-mb
        值：10240
           
        属性：yarn.nodemanager.remote-app-log-dir
        值：/app-logs
           
        属性：yarn.nodemanager.log-dirs
        值为：the directories used by Nodemanagers as log directories
          
        属性：yarn.nodemanager.aux-services
        值：mapreduce.shuffle
   
   
+ 创建符号链接：只需创建一次，下次执行不必创建］ 

        $ cd $HADOOP_COMMON_HOME/share/hadoop/common/lib/
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-mapreduce-client-app--SNAPSHOT.jar .
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-mapreduce-client-jobclient--SNAPSHOT.jar .
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-mapreduce-client-common--SNAPSHOT.jar .
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-mapreduce-client-shuffle--SNAPSHOT.jar .
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-mapreduce-client-core--SNAPSHOT.jar .
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-yarn-common--SNAPSHOT.jar .
        $ ln -s $HADOOP_MAPRED_HOME/modules/hadoop-yarn-api-*-SNAPSHOT.jar . 

+ 启动resourcemanager和nodemanager，如有问题，看logs下面的输出，可定位出错原因

        $ cd $HADOOP_MAPRED_HOME
        $ bin/yarn-daemon.sh start resourcemanager
        $ bin/yarn-daemon.sh start nodemanager 

+ 执行example中的例子，hadoop.apache.org上给的命令还是copy0.20版本的，注意example.jar的路径

		$HADOOP_COMMON_HOME/bin/hadoop jar hadoop-mapreduce-examples-0.23.0.jar  randomwriter out 

+ 看一下我的执行结果：
		
		2011-12-04 16:08:34,907 INFO  mapred.LocalJobRunner (LocalJobRunner.java:statusUpdate(459)) - done with 102406 records.
		2011-12-04 16:08:34,907 INFO  mapred.Task (Task.java:sendDone(1008)) - Task 'attempt_local_0001_m_000000_0' done.
		2011-12-04 16:08:34,907 INFO  mapred.LocalJobRunner (LocalJobRunner.java:run(232)) - Finishing task: attempt_local_0001_m_000000_0
		2011-12-04 16:08:34,908 INFO  mapred.LocalJobRunner (LocalJobRunner.java:run(352)) - Map task executor complete.
		2011-12-04 16:08:35,762 INFO  mapreduce.Job (Job.java:monitorAndPrintJob(1227)) -  map 100% reduce 0%
		2011-12-04 16:08:35,763 INFO  mapreduce.Job (Job.java:monitorAndPrintJob(1238)) - Job job_local_0001 completed successfully
		2011-12-04 16:08:35,785 INFO  mapreduce.Job (Job.java:monitorAndPrintJob(1245)) - Counters: 20
		    File System Counters
		        FILE: BYTES_READ=251516
		        FILE: BYTES_WRITTEN=1086056829
		        FILE: READ_OPS=0
		        FILE: LARGE_READ_OPS=0
		        FILE: WRITE_OPS=0
		    org.apache.hadoop.mapreduce.TaskCounter
		        MAP_INPUT_RECORDS=1
		        MAP_OUTPUT_RECORDS=102406
		        SPLIT_RAW_BYTES=113
		        SPILLED_RECORDS=0
		        FAILED_SHUFFLE=0
		        MERGED_MAP_OUTPUTS=0
		        GC_TIME_MILLIS=0
		        CPU_MILLISECONDS=0
		        PHYSICAL_MEMORY_BYTES=0
		        VIRTUAL_MEMORY_BYTES=0
		        COMMITTED_HEAP_BYTES=62652416
		    org.apache.hadoop.examples.RandomWriter$Counters
		        BYTES_WRITTEN=1073747349
		        RECORDS_WRITTEN=102406
		    org.apache.hadoop.mapreduce.lib.input.FileInputFormatCounter
		        BYTES_READ=0
		    org.apache.hadoop.mapreduce.lib.output.FileOutputFormatCounter
		        BYTES_WRITTEN=1085705129
		Job ended: Sun Dec 04 16:08:35 CST 2011
		The job took 20 seconds. 