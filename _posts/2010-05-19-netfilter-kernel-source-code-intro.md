--- 
title: !binary |
  TmV0ZmlsdGVy5L2T57O757uT5p6ELeWGheaguOS4reeahCBOZXRmaWx0ZXLm
  oYbmnrY=

type: post
layout: post
tags: 
- Code
- Kernel
---

## 通用防火墙简介：
   Linux上的防火墙一般是通过Netfilter来实现对包的有规则的过滤，防火墙模块在Linux上注册成为/dev的一个字符设备，通过ioctl()设置过滤规则，在5个HOOK（ipv4中是5个）钓鱼点设置钩子函数，一般设置规则是通过设置相关的（源IP，源PORT，目的IP，目的IP）来实现。

## Netfilter：
  Netfilter是一个框架，可以实现包过滤，NAT（net addr trans 网络地址转换），网络连接跟踪等功能。
在IPV4中有5个HOOK点，我们称为钓鱼点，因为在这些地方，可以设置钩子函数（鱼钩）来获取符合条件的数据包（鱼）。5个HOOK点的说明、函数位置、应用举例如下：

 + NF_IP_PRE_ROUTING	  由网卡传入主机的数据包，在没有经过IP层路由之前，会先经过这个点	 ip_rcv()	过滤拒绝服务攻击NAT计算
 + NF_IP_LOCAL_IN	  经过路由选择，要进入本机的数据包，会经过这个点	ip_local_deliver()      在此处可进行碎片重组	防火墙过滤进入本机的包
 + NF_IP_FORWARD	  经过路由，不是发往本机的包，需要向外发送，会经过这个点	ip_forward()  之后进入ip_send()	
 + NF_IP_LOCAL_OUT	  本机发往外部的数据包在经过路由之前会经过这个点	ip_build_and_send_pkt()  ip_queue_xmit（）ip_build_xmit_slow（）ip_buid_xmit（） 不同的上层协议会走不同的流程	防火墙过滤外发的数据包
 + NF_IP_POST_ROUTING  所有外出包都必须经过的钩子点	  本机发送出去的包，在路由后会经过此点 ip_finish_output()	  包计数功能实现
 
### 数据流描述

简单的校验

|

NF_IP_PRE_ROUTING->

|

路由

|

发往本机--->发往外部->NF_IP_FORWARD---->NF_IP_POST_ROUTING

|

NF_IP_LOCAL_IN

|

高层的协议及进程

|

发包

|

NF_IP_LOCAL_OUT

|

路由

|

NF_IP_POST_ROUTING 

HOOK函数的返回值

		include/linux/netfilter.h
		#define NF_DROP 0//丢弃数据包
		19#define NF_ACCEPT 1//允许该数据包继续传递
		20#define NF_STOLEN 2//接收该数据包，但不再传递，可以用于包的分片重组。
		21#define NF_QUEUE 3//将此数据包放入一特定队列，通常用于用户空间的处理。
		22#define NF_REPEAT 4//再次调用HOOK函数
		23#define NF_STOP 5
		24#define NF_MAX_VERDICT NF_STOP

nf_hook_ops数据结构： 

		include/linux/netfilter.h
		     struct nf_hook_ops {
		  97 struct list_head list; //用于维护NF的HOOK列表
		  98
		  99 / 下面的数据需要用户set /
		 100 nf_hookfn hook;      //hook被调用是执行的函数
		 101 struct module owner; //模块的owner
		 102 u_int8_t pf;          //制定协议族
		 103 unsigned int hooknum; //具体的hook类型
		 104 / Hooks的优先级按递增顺序排列 /
		 105 int priority; //优先级
		 106};

//其中hookfn声明如下：

		typedef unsigned int nf_hookfn(unsigned int hooknum,//具体的hook类型
		91 struct sk_buff skb,//socket缓冲区
		92 const struct net_device in, //输入设备（收到包的设备net_device指针）
				                                                //外发的包为NULL
		93 const struct net_device out,//接口（数据包离开所需要的net_device指针）
		94 int (okfn)(struct sk_buff ));//okfn，所有注册的hook函数都返回NF_ACCEPT时，调用


## NF_HOOK宏

调用该宏将筛选过滤功能的代码连接到NETFILTER中

		#define NF_HOOK(pf, hook, skb, indev, outdev, okfn) (okfn)(skb) //pf     协议族
		 //hook   钩子
		 //skb    buff结构的指针
		 //indev  hookfn中的in
		 //outdev hookfn中的out
		 //okfn

##注册Netfilter HOOK函数

就是向链表中添加一个节点，属性由协议簇和hook类型来确定,首先初始化一个nf_hook_ips节点（见上方的解析）

		struct list_head nf_hooks[NPROTO指定协议族][NF_MAX_HOOKS指定hook类型]

		int  nf_register_hook(struct nf_hook_ops reg); //注册函数   
		void nf_unregister_hook(struct nf_hook_ops reg); //注册解除函数

内核中使用示例

		//net/netfilter/core.c
		     int nf_register_hook(struct nf_hook_ops reg)
		  60{
		  61 struct nf_hook_ops *elem; //ops结构
		  62 int err; //错误变量
		  63
		  64 err = mutex_lock_interruptible(&nf_hook_mutex); //锁互斥量
		  65 if (err < 0)
		  66  return err;
		//根据优先级，将该hook插入合适的位置
		  67 list_for_each_entry(elem, &nf_hooks[reg->pf][reg->hooknum], list) {
		  68 if (reg->priority < elem->priority)
		  69 break;
		  70 }
		//增加一个节点
		  71 list_add_rcu(&reg->list, elem->list.prev);
		//解锁互斥量
		  72 mutex_unlock(&nf_hook_mutex);
		  73 return 0;
		  74}
