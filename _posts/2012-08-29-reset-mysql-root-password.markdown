--- 
title: Reset Mysql root password 
type: post
layout: post
tags: 
- Mysql
---

#### How to Reset Mysql Server root password?

1. run command as 'root':
		cat /etc/mysql/debian.cnf

1. then login mysql using username 'debian-sys-maint' and password you have seen:
		mysql -udebian-sys-maint -p
\>Enter password:
(Enter password offered by debian.cnf for user *debian-sys-maint*)
1. run command:
		mysql> UPDATE user SET Password=PASSWORD('newpassword') where USER='root';
		mysql> FLUSH PRIVILEGES;
		mysql> quit

1. login as root using password you set.
		# mysql -uroot -p
\>Enter password:

>mysql>


