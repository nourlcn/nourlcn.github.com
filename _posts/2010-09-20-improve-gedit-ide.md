---
title:  improve gedit ide
type: post
layout: post
tags: 
- !binary |
  5pyq5YiG57G7

---
<h4>Linux下编程环境，除了vim,emacs这等强大编辑器，其实gedit也是不错的选择，特别是轻巧易用，不像前二者那么难以驾驭。</h4><div>gedit可扩展性很强，我们可以通过给gedit添加插件，让gedit成为一个强大的C语言IDE。<br />今天心血来潮，配置了几个gedit插件，现在编C/C++程序基本和windows下VC差不多了。<br /><br />＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝<br />1. 代码折叠功能－－folding.gedit-plugin<br />下载<br />http://code.google.com/p/gedit-folding/downloads/list<br />folding.py<br />folding.gedit-plugin<br />使用:<br />点击任意一行 alt-z：自动折叠或者展开该行下的所有缩进行； alt-x：自动展开该行下的所有缩进行。<br /><br />2. 自动代码提示－－Word Completion<br />说明：能提示你在文件里输入过的单词，并不能对库函数进行提示。<br />下载：http://users.tkk.fi/~otsaloma/gedit/ （注意：把completion.gedit-plugin 和 completion.py 这两个文件下载就可以）<br />使用：<br />出现提示时，选择单词，按Tab键完成单词输入。<br /><br />3. 有了上面两个功能之后基本就可以了，还有一个Smart indentation plugin for C/C++/Java<br />下载：http://live.gnome.org/Gedit/Plugins?action=AttachFile&do=get&target=csmartindent.tar.gz<br />＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝<br /><br />安装插件：<br />将文件放在 /usr/lib/gedit-2/plugins/下，选择编辑->首选项->插件，在插件列表里把它勾上就可以了。<br /><br /></div>

