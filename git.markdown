---
layout: default
title: Git is Life Style
categories:
- Git
- Page
---

##  

+ [Using Git](http://nourlcn.ownlinux.net/2011/09/using-git.html)
+ [Kernel Hackers' Guide to Git](http://nourlcn.ownlinux.net/2010/10/kernel-hackers-guide-to-git.html)
+ [使用Git](http://nourlcn.ownlinux.net/2010/10/git.html)
 
<ul class="posts">
    {% for post in site.posts.Git %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
