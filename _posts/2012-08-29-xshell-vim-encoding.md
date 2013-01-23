--- 
title: Xshell+Vim中文乱码 
type: post
layout: post
tags: 
- Xshell
- Vim
---

#### Xshell+Vim

+ Xshell的编码设置为UTF-8
+ Vim打开文件后,执行 
    set encoding=utf-8 termencoding=utf-8 fileencoding=utf-8

如果文件编码不是UTF-8,fileencoding作相应修改。

+ 嫌麻烦的话，把
		set encoding=utf-8 termencoding=utf-8 fileencoding=utf-8

这句话写入 ~/.vimrc里面即可。

