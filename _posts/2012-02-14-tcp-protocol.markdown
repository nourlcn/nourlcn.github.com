--- 
title: !binary |
  5Lyg6L6T5bGC5Y2P6K6u77yIVENQ77yJ5bCP57uT

type: post
layout: post
tags: 
- TCP
---
<ul><li><span style="background-color: white; font-family: 'Lucida Grande', Verdana, Lucida, Helvetica, Arial, sans-serif; font-size: 13px; line-height: 19px; text-align: justify;">TCP连接的建立和释放的过程</span></li></ul><div style="text-align: justify;"><pre style="background-color: white; border-bottom-color: rgb(140, 172, 187); border-bottom-style: dashed; border-bottom-width: 1px; border-image: initial; border-left-color: rgb(140, 172, 187); border-left-style: dashed; border-left-width: 1px; border-right-color: rgb(140, 172, 187); border-right-style: dashed; border-right-width: 1px; border-top-color: rgb(140, 172, 187); border-top-style: dashed; border-top-width: 1px; font-size: 12px; line-height: 19px; margin-bottom: 1em; overflow-x: auto; overflow-y: auto; padding-bottom: 0.5em; padding-left: 0.5em; padding-right: 0.5em; padding-top: 0.5em;">TCP连接的建立采用了三次握手（three-way handshake）方式。<br />主机A的TCP向主机B的TCP发出连接请求报文段，其中SYN置1，同时选择一个序号x。<br />主机B的TCP收到连接请求报文段后，若同意，则发回确认，SYN 和ACK 都置1，确认号为x+1，同时也为自己选择一个序号y。<br />主机A的TCP收到B的确认后，向B给出确认，其ACK位置1，确认号为y+1，而自己的序号为x+1，并通知高层进程连接已建立。<br />主机B的TCP收到主机A的确认后，通知高层进程连接已建立。<br />TCP连接的释放采用所谓四次握手方式。<br />主机A的TCP通知对方要释放从A到B这个方向的连接，将发往主机B的TCP报文段的FIN置1，其序号x等于前面已传过的数据的最后一个字节的序号加1。<br />主机B的TCP收到释放连接通知后即发出确认，其序号为y，确认号为x+1，同时通知高层应用进程。<br />若主机B不再向主机A发送数据，发出连接释放报文段将FIN和ACK位置1，序号为y，确认号为x+1。<br />主机A发出确认，将ACK位置1，确认号y+1，序号是x+1。主机A的TCP向其应用进程报告，整个连接已经全部释放。</pre></div>
