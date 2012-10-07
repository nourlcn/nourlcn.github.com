--- 
title: Mongodb的备份方法
type: post
layout: post
tags: 
- Mongodb
---

+ 方法1：
> mongodb的数据库文件默认是存放在/data/db下的，对mongodb进行备份，只需要对/data/db下的文件进行备份即可。
需要在关闭mongodb的情况下，mongo在运行时进行备份是不安全的。

+ 方法2
> 使用自带的mongodump进行备份，使用mongorestore进行恢复备份。
mongodump作为普通的mongo客户端，可以在mongodb不停机的情况下进行备份，但是得到的备份结果不一定是实时的数据内容(可使用fsync上锁解决这个问题)。 
>- 备份一般用法:
>
            mongodump -d database1 -o out_dir   
>- 恢复一般用法：
>
            mongorestore -d db_name --drop /out_dir/database1
> --drop表示在恢复前删除db_name中的集合(若存在)，否则数据会与db_name合并(merge)

+ 方法3：
> 使用mongodb的从属备份
