---
title: Linux下网通上网问题解决方法
type: post
layout: post
tags: 
- XAUT
---


Linux下网通上网问题解决方法（适合drcomclient.exe 城市热点的客户端）（理工大宿舍楼就是用的这个）

现已成功上网，步骤分享如下：

使用的Dedian，就以 Debian为例，其余版本类似

+ 安装wine （不同版本的Linux都有对应的wine，可到[官网下载](www.winehq.org)

			dpkg -i wine*.deb

+ 将windows下的drcomclient.exe拷贝到Linux下（例如桌面上，目录： /home/nourlcn/
Desktop）
+ 运行

			wine /home/nourlcn/Desktop/drcomclient.exe

+ 运行第一步请选择 英文，避免安装过程中出现乱码，安装步骤和windows下一样，默认安装到 ./.wine/drive_c/
Program Files/宽带登录客户端插件/
+ 从windows下的C盘下windows/system32里面拷贝4个dll文件到 *~/.wine/drive_c/windows/
system32*下,这四个文件是：mfc42u.dll npptools.dll Packet.dll WanPacket.dll

+ 终端下 进入 *~/.wine/drive_c/Program Files/宽带登录客户端插件/* 运行

			wine ishare_user.exe

+ 启动 pppoeconf 配置用户名和密码 其余一般按默认回车就可以了（没有安装pppoeconf的需要先安装配置，我不能上网的情况下，挂在安装盘作为源，安装的ppp pppoe pppoeconf等，默认解决依赖）
+ *ping www.google.com.hk* 恭喜，成功了！！
