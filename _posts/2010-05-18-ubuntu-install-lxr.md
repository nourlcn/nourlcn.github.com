---
title:  ubuntu install lxr
type: post
layout: post
tags: 
- Code
- Ubuntu
---
<ul><li>安装apache2和lxr</li></ul>sudo apt-get install apache2<br />sudo apt-get install lxr<br /><ul><li>编辑/etc/apache2/httpd.conf，加入以下内容，这样在访问/lxr/的时候，可以访问到/usr/shar/lxr目录</li></ul>Alias /lxr /usr/share/lxr<br />Options All<br />AllowOverride All<br /><ul><li>在/usr/share/lxr/http下创建文件 .htaccess文件,文件内容如下：</li></ul>SetHandler cgi-script<br /><ul><li>创建/usr/share/lxr/source/2.6.32目录</li></ul>(先到kernel.org下载的2.6.32的源代码，tar解压缩，然后将解压后的代码拷贝到/usr/src/linux-source-2.6.32/)<br />mkdir /usr/share/lxr/source/2.6.32<br /><ul><li>然后在/usr/share/lxr/source/2.6.32 下创建linux符号连接</li></ul>ln -s /usr/src/linux-source-2.6.32 /usr/share/lxr/source/2.6.32/linux<br /><ul><li>创建/usr/share/lxr/source/versions，内容写入代码的版本号，如果有多个版本的代码，可以多行写入，比如</li></ul>2.6.30<br />2.6.32<br /><ul><li>创建/usr/share/lxr/source/defversion，这里记录缺省要看的版本，内容是</li></ul>2.6.32<br /><ul><li>建立索引(前提是sudo apt-get install glimpse，安装了glimpse工具) </li></ul>cd /usr/share/lxr/source/2.6.32/<br />sudo genxref 2.6.32  //ls查看，在当前目录有fileidx和xref<br />sudo glimpseindex -H /usr/share/lxr/source/2.6.32/ /usr/share/lxr/source/2.6.32/linux<br />(用了大概5分钟多)<br /><ul><li>修改源码目录属性为可读</li></ul>sudo chmod +r -R /usr/share/lxr/source/2.6.32/*<br /><ul><li>重启apache</li></ul>/etc/init.d/apache restart<br />ok，可以通过 http://localhost/lxr访问了！
