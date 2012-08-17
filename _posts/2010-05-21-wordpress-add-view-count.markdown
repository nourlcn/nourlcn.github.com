--- 
title: !binary |
  d29yZHByZXNz5pi+56S65paH56ug5rWP6KeI5qyh5pWw

type: post
layout: post
tags: 
- Wordpress
---
1. 在插件里搜索wp-postviews-plus<br/><br/>2.到host的wp-content/theme/当前使用的主题/ 这个目录下，找到index.php和signal.php两个文件<br/><br/>3. 想在主页的每篇文章下显示浏览次数，在index.php的<?php edit_post_link('Edit',' ',''); ?> 后添加<?php if(function_exists('the_views')) { the_views('次浏览', true); } ?><br/><br/>4. 想在每一篇文章（点击该文章标题进入后）的的下面显示显示浏览次数，在signal.php的<?php edit_post_link('Edit',' ',''); ?> 后添加<?php  if(function_exists('the_views')) { the_views('次浏览', true); } ?><br/><br/>5.OK，刷新一下就可以看到了。

