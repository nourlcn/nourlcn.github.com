--- 
title: Linux内核中socket调用关系
type: post
layout: post
tags: 
- Linux
- Kernel
---
<br />说明：所有函数原型及代码来自 函数原型[来自LXR.linux.no 内核2.6.34]网络应用程序调用socket()向系统注册套接字,才能进行通信,应用程序中通过系统调用进入内核,在内核中,网络模块的 socket调用关系为:<br /><br /><span style="font-family: 'Courier New'; font-size: small;">应用程序: socket()<br />-------------|---------------------------<br />内核:    sys_socketcall()  // net/socket.c 中<br />|<br />switch(call):<br />---|-------|-------|--------|---------|--判断应用层调用哪个函数<br />[socket() bind() listen() accept() connect()]<br />|<br />sys_socket(int family,int type,int protocal)<br />{<br />声明sock<br />sys_create(family,type,protocol,&sock);//sock是INET层的socket结构<br />sock_map_fd();<br />sock_release();<br />}</span><br /><br /><span style="font-family: 'Courier New'; font-size: small;">sys_create()<br />|<br />调用<br />|<br />sock_create(family,type,protocal等参数)<br />{<br />sock = sock_alloc(); //取得inode，并初始化<br />sock->type = type;//设置sock类型<br />net_families[family]->create<br />}</span><br /><br /><span style="font-size: small;"><span style="font-family: 'Courier New';">sock_alloc()         net_families[family]->create<br />|                        |<br />调用                 inet6_create<br />|<br />inet_create() //TCP/IP协议会调用inet_create() //net/ipv4/af_inet.c<br /></span></span><br /><br /><br />原型:<br /><div style="font-family: courier new; font-size: 12px; line-height: 12px;"><br /><table cellspacing="0" style="border-width: 0px; padding: 0px; width: 100%;"><tbody><tr> <td style="color: teal;" valign="top">1</td> <td><span style="color: black;">inet_create(</span><strong><span style="color: blue;">struct</span></strong><span style="color: black;"> </span><span style="color: black;">net</span><span style="color: black;"> </span><span style="color: red;">*</span><span style="color: black;">net,</span><span style="color: black;"> </span><strong><span style="color: blue;">struct</span></strong><span style="color: black;"> </span><span style="color: black;">socket</span><span style="color: black;"> </span><span style="color: red;">*</span><span style="color: black;">sock,</span><span style="color: black;"> </span><strong><span style="color: blue;">int</span></strong><span style="color: black;"> </span><span style="color: black;">protocol,</span><strong><span style="color: blue;">int</span></strong><span style="color: black;"> </span><span style="color: black;">kern)</span></td> </tr></tbody> </table><br /></div><br /><span style="font-size: small;">注:<br />1)调用sys_socketcall传入三个参数(,,call),通过对switch(call)语句判断应用程序要执行哪个系统调用 socket()bind()listen()accept()connect()</span><br />

		1	639 asmlinkage long sys_socketcall(int call, unsigned long __user *args);//参数call决定调用哪一个函数

		switch (call) {
		2254 case SYS_SOCKET: //socket()调用
		2255 err = sys_socket(a0, a1, a[2]);
		2256 break;
		2257 case SYS_BIND://bind()调用
		2258 err = sys_bind(a0, (struct sockaddr __user *)a1, a[2]);
		2259 break;
		2260 case SYS_CONNECT://connect()
		2261 err = sys_connect(a0, (struct sockaddr __user *)a1, a[2]);
		2262 break;
		2263 case SYS_LISTEN:
		2264 err = sys_listen(a0, a1);
		2265 break;
		2266 case SYS_ACCEPT:
		2267 err = sys_accept4(a0, (struct sockaddr __user *)a1,
		2268 (int __user *)a[2], 0);
		2269 break;
		2270 case SYS_GETSOCKNAME:
		2271 err =
		2272 sys_getsockname(a0, (struct sockaddr __user *)a1,
		2273 (int __user *)a[2]);
		2274 break;
		2275 case SYS_GETPEERNAME:
		2276 err =
		2277 sys_getpeername(a0, (struct sockaddr __user *)a1,
		2278 (int __user *)a[2]);
		2279 break;
		2280 case SYS_SOCKETPAIR:
		2281 err = sys_socketpair(a0, a1, a[2], (int __user *)a[3]);
		2282 break;
		2283 case SYS_SEND:
		2284 err = sys_send(a0, (void __user *)a1, a[2], a[3]);
		2285 break;
		2286 case SYS_SENDTO:
		2287 err = sys_sendto(a0, (void __user *)a1, a[2], a[3],
		2288 (struct sockaddr __user *)a[4], a[5]);
		2289 break;
		2290 case SYS_RECV:
		2291 err = sys_recv(a0, (void __user *)a1, a[2], a[3]);
		2292 break;
		2293 case SYS_RECVFROM:
		2294 err = sys_recvfrom(a0, (void __user *)a1, a[2], a[3],
		2295 (struct sockaddr __user *)a[4],
		2296 (int __user *)a[5]);
		2297 break;
		2298 case SYS_SHUTDOWN:
		2299 err = sys_shutdown(a0, a1);
		2300 break;
		2301 case SYS_SETSOCKOPT:
		2302 err = sys_setsockopt(a0, a1, a[2], (char __user *)a[3], a[4]);
		2303 break;
		2304 case SYS_GETSOCKOPT:
		2305 err =
		2306 sys_getsockopt(a0, a1, a[2], (char __user *)a[3],
		2307 (int __user *)a[4]);
		2308 break;
		2309 case SYS_SENDMSG:
		2310 err = sys_sendmsg(a0, (struct msghdr __user *)a1, a[2]);
		2311 break;
		2312 case SYS_RECVMSG:
		2313 err = sys_recvmsg(a0, (struct msghdr __user *)a1, a[2]);
		2314 break;
		2315 case SYS_RECVMMSG:
		2316 err = sys_recvmmsg(a0, (struct mmsghdr __user *)a1, a[2], a[3],
		2317 (struct timespec __user *)a[4]);
		2318 break;
		2319 case SYS_ACCEPT4:
		2320 err = sys_accept4(a0, (struct sockaddr __user *)a1,
		2321 (int __user *)a[2], a[3]);
		2322 break;
		2323 default:
		2324 err = -EINVAL;
		2325 break;
		2326 }
		asmlinkage long sys_socket(int, int, int);
		static int __sock_create(struct net *net, int family, int type, int protocol,struct socket **res, int kern)
		static int inet_create(struct net *net, struct socket *sock, int protocol,int kern)
		/*
		263 * 创建一个inet层的socket结构
		264 */
		static int inet_create(struct net *net, struct socket *sock, int protocol,int kern)
		268{
		269 struct sock *sk;
		270 struct inet_protosw *answer;
		271 struct inet_sock *inet;
		272 struct proto *answer_prot;
		273 unsigned char answer_flags;
		274 char answer_no_check;
		275 int try_loading_module = 0;
		276 int err;
		277
		278 if (unlikely(!inet_ehash_secret))
		279 if (sock->type != SOCK_RAW && sock->type != SOCK_DGRAM)
		280 build_ehash_secret();
		281
		282 sock->state = SS_UNCONNECTED; //设置sock的状态
		283
		284 /* Look for the requested type/protocol pair. */
		285 lookup_protocol:
		286 err = -ESOCKTNOSUPPORT;
		287 rcu_read_lock();//读锁
		288 list_for_each_entry_rcu(answer, &inetsw[sock->type], list) {
		289 //找到属于sock->type的head位置，并将inetsw结构暂存在answer指针中
		290 err = 0;
		291 /* Check the non-wild match. */
		292 if (protocol == answer->protocol) {
		293 if (protocol != IPPROTO_IP)
		294 break;
		295 } else {
		296 /* Check for the two wild cases. */
		297 if (IPPROTO_IP == protocol) {
		298 protocol = answer->protocol;
		299 break;
		300 }
		301 if (IPPROTO_IP == answer->protocol)
		302 break;
		303 }
		304 err = -EPROTONOSUPPORT;
		305 }
		306
		307 if (unlikely(err)) {
		308 if (try_loading_module < 2) {
		309 rcu_read_unlock();//解锁
		310 /*
		311 * Be more specific, e.g. net-pf-2-proto-132-type-1
		312 * (net-pf-PF_INET-proto-IPPROTO_SCTP-type-SOCK_STREAM)
		313 */
		314 if (++try_loading_module == 1)
		315 request_module("net-pf-%d-proto-%d-type-%d",
		316 PF_INET, protocol, sock->type);
		317 /*
		318 * Fall back to generic, e.g. net-pf-2-proto-132
		319 * (net-pf-PF_INET-proto-IPPROTO_SCTP)
		320 */
		321 else
		322 request_module("net-pf-%d-proto-%d",
		323 PF_INET, protocol);
		324 goto lookup_protocol;
		325 } else
		326 goto out_rcu_unlock;
		327 }
		328
		329 err = -EPERM;
		330 if (sock->type == SOCK_RAW && !kern && !capable(CAP_NET_RAW))
		331 goto out_rcu_unlock;
		332
		333 err = -EAFNOSUPPORT;
		334 if (!inet_netns_ok(net, protocol))
		335 goto out_rcu_unlock;
		336
		337 sock->ops = answer->ops; //inet所使用的函数名称
		338 answer_prot = answer->prot;
		339 answer_no_check = answer->no_check;
		340 answer_flags = answer->flags;
		341 rcu_read_unlock();
		342
		343 WARN_ON(answer_prot->slab == NULL);
		344
		345 err = -ENOBUFS;
		346 sk = sk_alloc(net, PF_INET, GFP_KERNEL, answer_prot);
		347 if (sk == NULL)
		348 goto out;
		349
		350 err = 0;
		351 sk->sk_no_check = answer_no_check;
		352 if (INET_PROTOSW_REUSE & answer_flags)
		353 sk->sk_reuse = 1;
		354
		355 inet = inet_sk(sk);
		356 inet->is_icsk = (INET_PROTOSW_ICSK & answer_flags) != 0;
		357
		358 if (SOCK_RAW == sock->type) {
		359 inet->inet_num = protocol;
		360 if (IPPROTO_RAW == protocol)
		361 inet->hdrincl = 1;
		362 }
		363
		364 if (ipv4_config.no_pmtu_disc)
		365 inet->pmtudisc = IP_PMTUDISC_DONT;
		366 else
		367 inet->pmtudisc = IP_PMTUDISC_WANT;
		368
		369 inet->inet_id = 0;
		370
		371 sock_init_data(sock, sk);
		372
		373 sk->sk_destruct = inet_sock_destruct;
		374 sk->sk_protocol = protocol;
		375 sk->sk_backlog_rcv = sk->sk_prot->backlog_rcv;
		376
		377 inet->uc_ttl = -1;
		378 inet->mc_loop = 1;
		379 inet->mc_ttl = 1;
		380 inet->mc_all = 1;
		381 inet->mc_index = 0;
		382 inet->mc_list = NULL;
		383
		384 sk_refcnt_debug_inc(sk);
		385
		386 if (inet->inet_num) {
		387 /* It assumes that any protocol which allows
		388 * the user to assign a number at socket
		389 * creation time automatically
		390 * shares.
		391 */
		392 inet->inet_sport = htons(inet->inet_num);
		393 /* Add to protocol hash chains. */
		394 sk->sk_prot->hash(sk);
		395 }
		396
		397 if (sk->sk_prot->init) {
		398 err = sk->sk_prot->init(sk);
		399 if (err)
		400 sk_common_release(sk);
		401 }
		402out:
		403 return err;
		404out_rcu_unlock:
		405 rcu_read_unlock();
		406 goto out;
		407}
		408

