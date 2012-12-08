--- 
title: Mac Safari配置SSH+Autoproxy
type: post
layout: post
tags: 
- Safari
---


在Firefox下，有Autoproxy可以帮助我们科学上网，但Safari的extension并没有类似的插件。

还好，appspot上[有个项目](https://autoproxy2pac.appspot.com/)，提供转换Autoproxy的gfwlist文件为PAC代理脚本的服务。

如何设置呢？

+ 点击Safari浏览器左上角--Safari--偏好
![image](http://i1218.photobucket.com/albums/dd413/nourlcn/Ownlinux/2012-12-0841150.png)

+ 在【高级】里面，选择代理-【更改设置】
![image](http://i1218.photobucket.com/albums/dd413/nourlcn/Ownlinux/2012-12-0841305.png)

+ 在打开的【网络】里面，勾选第二个【自动代理配置】，右侧的代理URL或者文件获取方式如下：
![image](http://i1218.photobucket.com/albums/dd413/nourlcn/Ownlinux/2012-12-0841335.png)

> 1. 打开这个地址<https://autoproxy2pac.appspot.com/>；
> 2. 选择代理的方式，至于使用什么代理服务器，可以自己选择，我使用的SSH方式;
> 3. 点击获取PAC地址，把得到的URL输入【网络】里面【代理配置文件】【URL】内；也可以下载PAC文件，在【网络】【代理配置文件】里【选择文件】；
> ![image](http://i1218.photobucket.com/albums/dd413/nourlcn/Ownlinux/2012-12-0841837.png)
> 4. 启用你的代理服务（如果是SSH的话，SSH -q*** username@host)

这时候通过Safari访问Twitter、Facebook等以及没问题了。






