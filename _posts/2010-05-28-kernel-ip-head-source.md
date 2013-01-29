--- 
title: !binary |
  c3RydWN0IGlwaGRy5rOo6YeK

type: post
layout: post
tags: 
- Code
- Kernel
---
<div style="text-align: center;"><span style="font-family: 'Courier New'; font-size: x-small;">Copyleft @ Leejingui      <br style="font: 12px song, verdana;" /></span></div><br/><div style="text-align: center;"><span style="font-family: 'Courier New'; font-size: x-small;">拷贝或转载请保持文档的完整性，注明文档出处</span></div><br/><div style="text-align: center;"></div><br/><div style="font-size: 12px; line-height: 12px; font-family: courier new;"><br/><table style="width: 100%; border-width: 0px; padding: 0px;" cellspacing="0"><br/><tbody><br/><tr><br/><td><span style="color: #000000;">include</span><span style="color: #ff0000;">/</span><span style="color: #000000;">linux</span><span style="color: #ff0000;">/</span><span style="color: #000000;">ip</span><span style="color: #ff0000;">.</span><span style="color: #000000;">h</span><span style="color: #000000;"> </span><span style="color: #000000;">代码来自lxr</span><span style="color: #ff0000;">.</span><span style="color: #000000;">linux</span><span style="color: #ff0000;">.</span><span style="color: #000000;">no</span><span style="color: #000000;"> </span><strong><span style="color: #008080;">2</span></strong><span style="color: #ff0000;">.</span><strong><span style="color: #008080;">6</span></strong><span style="color: #ff0000;">.</span><span style="color: #000000;">34内核</span></td><br/></tr><br/><tr><br/><td></td><br/></tr><br/><tr><br/><td></td><br/></tr><br/><tr><br/><td><strong><span style="color: #0000ff;">struct</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">iphdr</span><span style="color: #000000;"> </span><span style="color: #000000;">{</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">86</span></strong><span style="color: #000000;">#</span><strong><span style="color: #0000ff;">if</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">defined(__LITTLE_ENDIAN_BITFIELD)</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">87</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__u8</span><span style="color: #000000;"> </span><span style="color: #000000;">ihl</span><span style="color: #ff0000;">:</span><strong><span style="color: #008080;">4</span></strong><span style="color: #000000;">,</span><span style="color: #008000;">//</span><span style="color: #008000;">报头长途</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">88</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">version</span><span style="color: #ff0000;">:</span><strong><span style="color: #008080;">4</span></strong><span style="color: #000000;">;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">版本</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">89</span></strong><span style="color: #000000;">#elif</span><span style="color: #000000;"> </span><span style="color: #000000;">defined</span><span style="color: #000000;"> </span><span style="color: #000000;">(__BIG_ENDIAN_BITFIELD)</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">90</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__u8</span><span style="color: #000000;"> </span><span style="color: #000000;">version</span><span style="color: #ff0000;">:</span><strong><span style="color: #008080;">4</span></strong><span style="color: #000000;">,</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">版本</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">91</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">ihl</span><span style="color: #ff0000;">:</span><strong><span style="color: #008080;">4</span></strong><span style="color: #000000;">;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">报头长度</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">92</span></strong><span style="color: #000000;">#</span><strong><span style="color: #0000ff;">else</span></strong></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">93</span></strong><span style="color: #000000;">#error</span><span style="color: #000000;"> </span><span style="color: #008080;">"</span><span style="color: #008080;">Please</span><span style="color: #008080;"> </span><span style="color: #008080;">fix</span><span style="color: #008080;"> </span><span style="color: #008080;"><asm/byteorder.h></span><span style="color: #008080;">"</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">94</span></strong><span style="color: #000000;">#endif</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">95</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__u8</span><span style="color: #000000;"> </span><span style="color: #000000;">tos;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">type</span><span style="color: #008000;"> </span><span style="color: #008000;">of</span><span style="color: #008000;"> </span><span style="color: #008000;">service</span><span style="color: #008000;"> </span><span style="color: #008000;">服务类型</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">96</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__be16</span><span style="color: #000000;"> </span><span style="color: #000000;">tot_len;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">total</span><span style="color: #008000;"> </span><span style="color: #008000;">length</span><span style="color: #008000;"> </span><span style="color: #008000;">总长度</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">97</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__be16</span><span style="color: #000000;"> </span><span style="color: #000000;">id;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">identification</span><span style="color: #008000;"> </span><span style="color: #008000;">标识符</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">98</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__be16</span><span style="color: #000000;"> </span><span style="color: #000000;">frag_off;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">fragment</span><span style="color: #008000;"> </span><span style="color: #008000;">offset</span><span style="color: #008000;"> </span><span style="color: #008000;">field</span><span style="color: #008000;"> </span><span style="color: #008000;">段移位域</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">99</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__u8</span><span style="color: #000000;"> </span><span style="color: #000000;">ttl;</span><span style="color: #000000;"> </span><span style="color: #008000;">//</span><span style="color: #008000;">time</span><span style="color: #008000;"> </span><span style="color: #008000;">to</span><span style="color: #008000;"> </span><span style="color: #008000;">live</span><span style="color: #008000;"> </span><span style="color: #008000;">生存时间</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">100</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__u8</span><span style="color: #000000;"> </span><span style="color: #000000;">protocol;</span><span style="color: #008000;">//</span><span style="color: #008000;">上层使用的协议</span></td><br/></tr><br/><tr><br/><td></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">101</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__sum16</span><span style="color: #000000;"> </span><span style="color: #000000;">check;</span><span style="color: #008000;">//</span><span style="color: #008000;">checksum检查和</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">102</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__be32</span><span style="color: #000000;"> </span><span style="color: #000000;">saddr;</span><span style="color: #008000;">//</span><span style="color: #008000;">源地址</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">103</span></strong><span style="color: #000000;"> </span><span style="color: #000000;">__be32</span><span style="color: #000000;"> </span><span style="color: #000000;">daddr;</span><span style="color: #008000;">//</span><span style="color: #008000;">目的地址</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">104</span></strong><span style="color: #000000;"> </span><span style="color: #008000;">/*</span><span style="color: #008000;">The</span><span style="color: #008000;"> </span><span style="color: #008000;">options</span><span style="color: #008000;"> </span><span style="color: #008000;">start</span><span style="color: #008000;"> </span><span style="color: #008000;">here.</span><span style="color: #008000;"> </span><span style="color: #008000;">*/</span></td><br/></tr><br/><tr><br/><td><strong><span style="color: #008080;">105</span></strong><span style="color: #000000;">}</span><span style="color: #000000;">;</span></td><br/></tr><br/><tr><br/><td></td><br/></tr><br/></tbody><br/></table><br/></div><br/><div>【未完待续ing】</div>