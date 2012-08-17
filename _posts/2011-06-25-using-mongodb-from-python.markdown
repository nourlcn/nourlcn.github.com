--- 
title: Using MongoDB from Python
type: post
layout: post
tags: 
- MongoDB
- NoSQL
- Python
---
<ul>   <li>Install </li> </ul>  <p>/bin.easy_install pymongo</p>  <ul>   <li>Start </li> </ul>  <p>mkdir /tmp/db</p>  <p>mongod –dbpath /tmp/db</p>  <p>python</p>  <p>>>import pymongo</p>  <p>>>conn = pymongo.Connection(,localhost,27127)</p>  <p>……</p>  <ul>   <li>Compare between SQL and mongoDB </li> </ul>  <p><img style="display: inline; margin-left: 0px; margin-right: 0px" height="494" src="http://i1218.photobucket.com/albums/dd413/nourlcn/wordpressblog/1-2.jpg" width="550" align="left" /> </p>  <p>Pictrue from slide <a title="http://slidesha.re/k0180o" href="http://slidesha.re/k0180o" target="_blank">http://slidesha.re/k0180o</a></p>
