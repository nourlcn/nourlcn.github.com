--- 
title: Synergy:两台电脑共享鼠标键盘

type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---

##问题背景：

我的工作台上放置了台式windows及笔记本ubuntu，平时使用时来回切换鼠标和键盘非常不爽，使用synergy，可以让这两台电脑共享一套鼠标键盘。

synergy使用客户端-服务器模式工作，两台电脑均安装synergy后，一台配置当作服务器，并且连接鼠标键盘，另一台配置为客户端，即可工作。

windows客户端：[http://www.onlinedown.net/soft/5666.htm](http://www.onlinedown.net/soft/5666.htm)

Linux客户端：配置好软件源，使用*sudo apt-get install synergy*
得到两台电脑的计算机名 

windows中我的电脑-系统属性-计算机名，可以看到； 

linux中使用*hostname*即可看到

##配置方案：

###配置流程

#### 一、服务器端

我们假设，右边这台主机作为服务器端

1.服务器端是windows系统

>打开synergy，选”share this computer’s keyboard and mouse(server)”，点击configure设置，来告诉synergy，你有几台电脑，各台电脑叫什么名字，屏幕之间是什么位置关系，具体如下：

>1. 在Screens里面点击 “+”按钮，将两台计算机的名字添加进去
1. 点击下面的“new link”，在下面选择 the “left” of 你右边电脑的名字 goes to 你左边电脑的名字，然后点击下面的“+”以添加一个位置信息。同理再添加一条： the ”right“ of 你左边电脑的名字 goes to 你右边电脑的名字。
1. 点击“OK”离开配置界面。再点击AutoStart, 在弹出来的对话框中选择When Computer Start 还是when login 启动synergy。
1. 按Start开启服务器端的synergy服务，等待客户端来连接。

2.服务器端是Linux系统

>Linux服务器端的配置有点复杂，要自己写一个配置文件synergy.conf，用于告诉synergy有哪些主机，各个主机的位置关系等信息。并且如果要实现自动运行synergy，要修改三个文件，这三个文件在不同的发行版位置不同，名字大致差不多，比如：Ubuntu中，这三个文件是：

			/etc/gdm/Init/Default :登陆界面出现以前，系统加载的程序，我们要在这个文件里添加运行synergy的命令 
			/etc/gdm/PostLogin/Default.sample : 定义了登录过程中要做的事情，这里我们要暂时关闭synergy服务 
			/etc/gdm/PreSession/Default :定义了登录后加载的程序，这里我们要重新开启synergy服务。 

>1. 在当前用户目录下新建一个文件命名为：synergy.conf。打开，参考下面的例子，根据实际情况修改一下写入*synergy.conf*。
			section: screens 
			wisper-desktop: 
			wisper2-desktop: 
			end 
			section: links 
			wisper-desktop: 
			left = wisper2-desktop 
			wisper2-desktop: 
			right = wisper-desktop 
			end
>其中：wisper-desktop是右边电脑也即服务器端电脑的名字，wisper2-desktop是左边电脑的名字，如果你使用双系统，最好将两个系统的电脑名字都修改成一样。
>1. 修改/etc/gdm/Init/Default 和 /etc/gdm/PreSession/Default 在它们的最前面添加下面这三行：
			/usr/bin/killall synergys 
			sleep 1 
			/usr/bin/synergys –config synergy.conf
> 1. 在/etc/gdm/PostLogin/Default.sample 中添加下面2行
			/usr/bin/killall synergys 
			sleep 1
>1. 重启。

#### 二、客户端

1. 客户端是windows
打开synergy，选上“Use another Computer‘keyboard and mouse （Client）”，接下来的操作同服务器端的第三步第四部。

1. 客户端是Linux系统
Linux下配置稍微复杂点，如果你已经配置好服务器端，你可以使用/usr/bin/synergyc –daemon 服务器端的IP 来使用，如果要实现出现登陆界面开始就自动启动这个功能，请参考服务器端的配置, 只需将

1. Init/default，以及PreSession/default里面的/usr/bin/synergys –config synergy.conf 修改为/usr/bin/synergyc –daemon 服务器端的IP ，/usr/bin/killall synergys修改为/usr/bin/killall synergyc

2.*/usr/bin/killall synergys* 修改为*/usr/bin/killall synergyc*

说明：我的配置方式为windows作服务器端，Linux作客户端，配置成功，其余搭配方式均未验证。