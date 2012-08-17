--- 
title: two eclipse problems
type: post
layout: post
tags: 
- Eclipse
---
When I import a java project from SVN and scan the source code, eclipse pop “problems opening an editor” when I press F3 to see declaration of the class/function and "the resource  is not on the build path of a java project" when press F4 to see Type Hierarchy of class/function.<br /><br />Why ?<br /><br />After Google again and again, this prolem was resolved:<br /><br />1. When import source code from SVN, choose "as new project" and "use project guide", not "as project in workspace"<br /><br />2. When finished checkout, try again, you will find F3 and F4 could be used.
