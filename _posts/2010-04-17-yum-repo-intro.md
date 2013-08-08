---
title:  yum repo intro
type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---
<pre><br/>[yumtest]         //指定yum源的标签，只要在本机的所有yum源中不重复即可<br/>name=Server   //指定yum源的名称，用于yum客户端查看可用rpm包的一个分组信息，只要在本机的所有yum源中不重复即可<br/>baseurl=file:///iso/rhel51server/Server   //指定yum源，可以是一个目录或者FTP、HTTP等其他形式<br/>enable=1    //该yum源可用，当enable=0时该yum源不可用<br/>gpgcheck=1  //进行数字签名检查。如果某些软件包未提供数字签名公钥，又希望安装这些软件包，可以设置该值为0，不进行检查<br/>gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release  //指定发行版数字签名公钥文件<br/></pre>

