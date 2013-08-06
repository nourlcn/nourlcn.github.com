--- 
title: Python访问MySQL编码问题
type: post
layout: post
tags: 
- Mysql
- Python
---

写一个简单的应用，用MySQLdb将Mysql中的内容读出并显示到web。<br /><br />由于MySQL中默认是latin1编码，MySQLdb虽可以设置连接编码，用尽各种unicodeencodedecode还是显示乱码。<br /><br />最后只能出绝招了：使用%s格式化输出，可得到正确结果。<br />
