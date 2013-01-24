--- 
title: !binary |
  Q+ivreiogOWkmui/m+eoi+eahOS+i+WtkA==

type: post
layout: post
tags: 
- C/C++
---
<pre><br/><br/>#include <stdio.h><br/>#include <unistd.h><br/><br/>void child_process();<br/>void parent_process();<br/><br/>static count = 0;<br/><br/>int main()<br/>{<br/>    pid_t pid;<br/>    printf("Enter into the multi_program !n");<br/>    pid = fork();<br/><br/>    switch (pid)<br/>    {<br/>    case -1:<br/>        printf("Create process WRONG!n");<br/>        break;<br/>    case 0:<br/>        child_process();<br/>        break;<br/>    default:<br/>        parent_process();<br/>        break;<br/>    }<br/><br/>    printf("Run SUCCESS!n");<br/>}<br/><br/>void child_process()<br/>{<br/>    while (1)<br/>    {<br/>        sleep(5);<br/>        printf("Child: Hello!%dn",count++);<br/>    }<br/>}<br/><br/>void parent_process()<br/>{<br/>    int i;<br/>    while (1)<br/>    {<br/>        scanf("%d",&i);<br/>        printf("Parent: Recieve %dn",i);<br/>    }<br/>}<br/><br/><br/></pre>

