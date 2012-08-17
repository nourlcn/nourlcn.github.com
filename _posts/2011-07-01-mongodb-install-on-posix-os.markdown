--- 
title: !binary |
  UE9TSVjns7vnu5/kuIvlronoo4VNb25nb0RC

type: post
layout: post
tags: 
- MongoDB
- NoSQL
---
<p>本文为32位debian系统，安装MongoDB version1.8.2</p>  <ul>   <li>确定系统是32位还是64位 </li>    <li>MongoDB版本号为偶数的为稳定版，如1.6 1.8；版本号为奇数的为开发板，如1.7 </li>    <li>创建数据目录，存放数据文件 </li> </ul>  <p><em>mkdir -p /data/db</em></p>  <ul>   <li>确保目录有写权限 </li> </ul>  <p><em>chown -R $USER:$USER /data/db</em></p>  <ul>   <li>下载mongoDB，解压 </li> </ul>  <p><em>wget</em> <a href="http://fastdl.mongodb.org/linux/mongodb-linux-i686-1.8.2.tgz"><em>http://fastdl.mongodb.org/linux/mongodb-linux-i686-1.8.2.tgz</em></a></p>  <p><em>tar -zxvf mongodb-linux*.tgz</em></p>  <p><em>cd mongodb-linux-*</em></p>  <ul>   <li><em>启</em>动数据库 </li> </ul>  <p><em>$bin/mongod</em></p>  <ul>   <li>使用mongod --help可以查看常用选项帮助 </li> </ul>  <p> </p>  <p>本来想插入几个配置、启动图片的，今天网络不断抽风，photobucket google flickr等都不能正常使用，真郁闷！</p>  <p style="text-align: right">2011-06-30</p>
