---
layout: post
title: "解决gem install jekyll的问题"
date: 2012-08-06 15:33
comments: true
categories:
- Jekyll
---

系统环境：*Ubuntu12.04 LTS*

在使用*gem install jekyll*的时候，总是提示

	ERROR:  Could not find a valid gem 'jekyll' (>= 0) in any repository
	ERROR:  Possible alternatives: jekyll`

增加了gem的*rubygems.org gems.github.com*源后，仍然存在问题。

后来在[这里](http://ruby.taobao.org/)找到了答案。原来*rubygems.org*是因为国内网络的原因。至于github的源，打开[这个页面](http://gems.github.com/)可以看到提示，"*We've stopped building gems*"。

### 解决方式

	$ gem sources --remove http://rubygems.org/
	$ gem sources -a http://ruby.taobao.org/
	$ gem sources -l
	*** CURRENT SOURCES ***
	http://ruby.taobao.org    
	$ gem install rack

确保只有taobao的源，我试过仅仅增加taobao的源还是不可以，使用*gem sources --remove url*删除其它的源。

然后执行*gem install jekyll* 

OK,没问题了.

