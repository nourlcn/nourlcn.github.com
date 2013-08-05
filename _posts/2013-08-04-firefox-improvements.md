---
title: Mac系统Firefox优化
type: post
layout: post
tags:
- Firefox
- Mac
---

Mac上的Firefox总感觉没有Chrome快，也没有Safari快，但比Safari扩展插件多，加之习惯问题，所以一直是我的主力浏览器。在地址栏输入`about:config`，点击「我保证会小心」，可以对Firefox的配置进行优化，我做的主要优化如下：

1. 地址栏关键词搜索默认为雅虎，改为Google搜索：
搜索关键词keyword.Url，将值改为`http://www.google.com.hk/search?q=`

2. browser.tabs.animate = false
关闭标签的动画效果


3. browser.sessionhistory.max_total_viewers = 5
浏览器默认保存的「前进/后退」页面数量，由-1（无限制）改为5.因为我也不怎么用「前进/后退」的功能

4. network.http.pipelining=true
增加连接请求数量.

5. security.dialog_enable_delay = 0
安装扩展时等待的时间(单位毫秒)，默认为2秒（值为2000），改为0.

6. network.dns.disableIPv6 = true
禁用IPv6，我的工作环境几乎还没有普及IPv6，关闭它可以提高速度.
