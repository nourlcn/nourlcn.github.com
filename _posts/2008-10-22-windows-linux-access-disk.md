---
title:  windows linux access disk
type: post
layout: post
tags: 
- Win
---
<p>       很多朋友的电脑都是装的双系统，其中windows * +Linux模式的很多，双系统能为大家提供更强的功能，但是在一个系统中需要用到另一个系统下的资料的情况在所难免，如何实现双系统下资源共享呢?</p>  <p>重点讲windows下访问linux的分区：</p>  <p>1.Linux下访问Windows</p>  <p>其实这个不难，大部分Linux的发行版都支持访问windows的硬盘分区，好一点的像ubuntu等，安装完后会自动挂载windows的分区到目录下，有些版本稍微麻烦一点点，需要mount 一下，手动挂载windows下的分区（这种情况可以设置成开机自动挂载，google上很多很多例子），也不麻烦.</p>  <p>有些发行版只支持挂载FAT格式的分区（比如我前两天装的红帽（Redhat Enterprise Linux）），这个不要紧，到网上下载一个内核扩展包安装一下就可以了。或者重新编译内核，编译的过程中选中对NTFS的支持。（具体见我的上一篇文章）</p>  <p>2.windows下访问linux的分区</p>  <p>方法一（只读）：</p>  <p>下载最新的Explore2fs，下载地址： <a href="http://www.chrysocome.net/explore2fs">http://www.chrysocome.net/explore2fs</a></p>  <p>启动文件浏览器可以看到linux下的分区文件，但是只能读，不可写。</p>  <p>方法二（只读）：</p>  <p>到<a href="http://www.diskinternals.com/linux-reader">http://www.diskinternals.com/linux-reader</a> ，下载并安装DiskInternals Linux Reader 安装完后自动扫描你的linux分区，列出分区下的文件。</p>  <p>方法三（可读可写）：</p>  <p>到<a href="http://www.fs-driver.org/index.html">http://www.fs-driver.org/index.html</a> 下载  Ext2 Installable File System For Windows （它支持ext2ext3！）</p>  <p>安装过程中提示你是否 enable write，选中该选项可以对linux分区进行写操作，不选中只能读不可以写。</p>  <p>然后提示你是否支持 大文件的操作，如果不选中只能在两个操作系统中操作不大于2G的文件，大于2G的文件禁止在linux和windows两个系统之间复制等操作。</p>  <p>然后提示你为linux分区选择一个盘符，一般选择L （代表Linux分区），swap分区就不要选择盘符了，这是Linux下的交换分区，相当于windows下的虚拟内存，不要使用它存文件。</p>  <p>然后一路NEXT,最后FINISH.查看我的电脑下有没有L盘，如果没有，重启一下就是。</p>  <p>我就是使用的这种办法。当初我给Linux操作系统预留的空间不多，现在使用Linux操作系统比较顺手了，经常有许多文件需要两个操作系统之间来回搬动，重装系统又麻烦，我就使用了这种方法。在linux下可以访问windows，windows下也可以访问linux。</p>  <p>我在自己电脑上试过，Perfect ！如有不当，恳请指点！！</p>
