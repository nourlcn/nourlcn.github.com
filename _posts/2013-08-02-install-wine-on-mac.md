---
title: Mac上安装wine
type: post
layout: post
tags:
- wine
---

在Mac上使用brew install wine安装wine，提示错误：

        Error: wine dependency jpeg not installed with:
        --universal
        
解决方式：删除jpeg，使用--universal选项安装

        brew rm jpeg
        brew install jpeg --universal
        
        