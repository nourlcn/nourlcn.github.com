--- 
title: Mongodb中的修改器
type: post
layout: post
tags: 
- Mongodb
---

#### 修改器的用途
> 需要频繁修改文档中的某些内容是，可以使用find/findOne+update的组合方式实现，修改器是Mongodb的内置功能，是一种特殊的键，可以更高效完成修改。

#### 一般格式
        foo.update({k:v}, {$修改器: {key: value}}
        
> 其中$修改器 可以为：
>
 - $inc  对满足查询条件的对象实现对应key的值实现+=value操作，如果key值不存在，则创建这个k-v对象；
 - $set  修改满足查询条件的key值的内容，value的类型可以不一致；
 - $unset  删除满足查询条件的key值的内容

针对数组的修改，可以使用$push $pop修改器：

 - $push 满足查询条件的对象，其key值对应的value为一个数组(如果不存在则自动创建一个)，向该数组尾部增加一个元素value
 - $pop 从数组内删除一个元素 {$pop: {key:1}}从尾部删除，{$pop: {key:-1}}从头部删除
 - $pull 根据特定条件删除数组内元素 {$pull: {author:"xxx"}} 删除author数组里面值为"xxx"的元素；

**其他常用** (针对数组)：

 - $ne  not exist则添加，比如 *foo.update({author: {$ne: "xxx"}}, {$push: {author: "xxx"}})* 表示如果xxx不在author数组内，则添加author: "xxx"到数组的尾部；

 - $addToSet 和$ne类似,(看到set，就明白这个操作的对象类似一个集合，没有重复元素)，如果不存在就添加，例如 *foo.update({id: 123}, {$addToSet: {author: "xxx"}})*，author数组内没有重复元素，如果不存在xxx则添加进去；
 - $each  取数组中的每一个，例如： *foo.update({id: 123}, {$addToSet: {author: {$each: ["xxx", "yyy"]}}})* 如果xxx或yyy在author对应的数组内不存在，则添加他们进入该数组；

**数组的定位修改**

 - 方法1
> 使用数组的索引，比如数组author的第一个元素某属性，可以使用author.1.attribute

 - 方法2
> 使用$，$值查询文档已经匹配的元素，比如查询文档comments中{author:"xxx"}对应的文档，可以这样定问： comments.$.attribute
>
> 注意：定位符$只定位第一个满足查询文档的元素 