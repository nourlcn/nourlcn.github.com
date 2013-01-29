--- 
title: !binary |
  W+aUtuiXj11SSEVMNeS9v+eUqENlbnRPU+a6kOWNh+e6pw==

type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---
从RHEL升级到CentOS<br/><br/>安装完CentOS RHEL后，如果没有授权，没有办法在线更新的，也就是不能用yum，没有yum的CentOS RHEL将会是非常难用。为此需要将CentOS RHEL做一个更新，升级使用CentOS的yum源。<br/><br/>1.卸载rhel的yum相关的包<br/>列出yum相关的包：<br/><pre><br/># rpm -qa|grep yum<br/>yum-security-1.0.4-3.el5<br/>yum-updatesd-3.0.1-5.el5<br/>yum-rhn-plugin-0.5.2-3.el5<br/>yum-metadata-parser-1.0-8.fc6<br/>yum-3.0.1-5.el5<br/></pre><br/><br/>卸载掉相关的包：<br/><pre><br/>rpm -e yum-3.0.1-5.el5 --nodeps<br/>rpm -e yum-updatesd-3.0.1-5.el5<br/>rpm -e yum-rhn-plugin-0.5.2-3.el5<br/>rpm -e yum-security-1.0.4-3.el5<br/></pre><br/>最后保留的：<br/><pre><br/># rpm -qa|grep yum<br/>yum-metadata-parser-1.0-8.fc6<br/></pre><br/>2.安装centos的源<br/><br/>先确定当前系统版本：<br/><pre><br/># uname -aLinux st-71 2.6.18-53.1.13.el5 #1 SMP Tue Feb 19 00:19:41 CST 2008 x86_64 x86_64 x86_64 GNU/Linux确定发行版本：<br/># cat /etc/redhat-releaseRed Hat Enterprise Linux Server release 5.1 (Tikanga)因此需要的是CentOS 5.1 的 x86_64 的 yum-3.x.el5.centos.5.noarch.rpm<br/></pre><br/>到CentOS官网寻找最近的地址http://mirror.centos.org/centos/5/os/<br/><br/>如果RHEL的版本较老，可以在这个地址的相应目录找到yum的rpm安装包：http://vault.centos.org/找到并下载到本 地：<br/><pre><br/># wget http://centos.ustc.edu.cn/centos/5.1/os/x86_64/CentOS/yum- 3.0.5-1.el5.centos.5.noarch.rpm<br/></pre><br/>安装：<br/><pre><br/># rpm -ivh yum-3.0.5-1.el5.centos.5.noarch.rpm<br/></pre><br/>确认安装成功：<br/><br/><pre><br/># rpm -qa|grep yum</li><br/>yum-3.0.5-1.el5.centos.5</li><br/>yum-metadata-parser-1.0-8.fc6</li><br/></pre><br/>3.修改CentOS-Base.repo<br/><br/>进入yum 源配置目录：<br/><br/># cd /etc/yum.repos.d/<br/>默认只有一个文件：<br/># lsrhel-debuginfo.repo添加CentOS的源配置：<br/># vi CentOS-Base.repo 内容为（按需修改，主要是版本号（5.1）与系统位数（x86_64）需要做适当修改 ）：<br/><pre><br/><br/>[base]<br/>name=CentOS-5.1 - Base<br/>baseurl=http://centos.ustc.edu.cn/centos/5.1/os/$basearch/<br/>gpgcheck=0<br/>gpgkey=http://centos.ustc.edu.cn/centos/5.1/os/x86_64/RPM-GPG-KEY-CentOS-5<br/><br/>#released updates<br/>[updates]<br/>name=CentOS-5.1 - Updates<br/>baseurl=http://centos.ustc.edu.cn/centos/5.1/os/$basearch/<br/>gpgcheck=0<br/>gpgkey=http://centos.ustc.edu.cn/centos/5.1/os/x86_64/RPM-GPG-KEY-CentOS-5<br/><br/><br/>#packages used/produced in the build but not released<br/>[addons]<br/>name=CentOS-5.1 - Addons<br/>baseurl=http://centos.ustc.edu.cn/centos/5.1/os/$basearch/<br/>gpgcheck=0<br/>gpgkey=http://centos.ustc.edu.cn/centos/5.1/os/x86_64/RPM-GPG-KEY-CentOS-5<br/><br/><br/>#additional packages that may be useful<br/>[extras]<br/>name=CentOS-5.1 - Extras<br/>baseurl=http://centos.ustc.edu.cn/centos/5.1/os/$basearch/<br/>gpgcheck=0<br/>gpgkey=http://centos.ustc.edu.cn/centos/5.1/os/x86_64/RPM-GPG-KEY-CentOS-5<br/>#additional packages that extend functionality of existing packages<br/>[centosplus]<br/>name=CentOS-5.1 ¨C Plus<br/>baseurl=http://centos.ustc.edu.cn/centos/5.1/os/$basearch/<br/>gpgcheck=0<br/>gpgkey=http://centos.ustc.edu.cn/centos/5.1/os/x86_64/RPM-GPG-KEY-CentOS-5<br/>#contrib - packages by Centos Users<br/>[contrib]<br/>name=CentOS-5.1 - Contrib<br/>baseurl=http://centos.ustc.edu.cn/centos/5.1/os/$basearch/<br/>gpgcheck=0<br/>gpgkey=http://centos.ustc.edu.cn/centos/5.1/os/x86_64/RPM-GPG-KEY-CentOS-5<br/></pre><br/><br/>原文： http://os.51cto.com/art/201002/184584.htm
