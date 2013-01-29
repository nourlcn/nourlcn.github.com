--- 
title: !binary |
  QmxvZ2dlcitHb29nbGUgY29kZSBwcmV0dGlmeeWunueOsOS7o+eggemrmOS6
  ruaYvuekug==

type: post
layout: post
tags: 
- Blogger
- Prettify
---
使用Google Code Prettify为Blogger中的代码渲染语法高亮效果：<br /><br /><ul><li>关于Google Code Prettify的介绍，见<a href="http://code.google.com/p/google-code-prettify/">这里；</a></li></ul><ul><li>用法很简单，在Blogger Setting里面编辑HTML模板，在</head> tag前加入以下内容，引用prettify的css样式及javascript代码：</li></ul><pre><span><script</span><span> </span><span>language</span><span>=</span><span>'javascript'</span><span> </span><span>src</span><span>=</span><span>'http://google-code-prettify.googlecode.com/svn/trunk/src/prettify.js'</span><span> </span><span>type</span><span>=</span><span>'text/javascript'</span><span>/></span><span><br /></span><span><link</span><span> </span><span>href</span><span>=</span><span>'http://google-code-prettify.googlecode.com/svn/trunk/src/prettify.css'</span><span> </span><span>rel</span><span>=</span><span>'stylesheet'</span><span> </span><span>type</span><span>=</span><span>'text/css'</span><span>/></span><span><br /></span><span><style></span><span><br />pre </span><span>{</span><span><br />  background</span><span>-</span><span>color </span><span>:</span><span> </span><span>#f7f7f7;</span><span><br />  overflow         </span><span>:</span><span> </span><span>auto</span><span> </span><span>;</span><span><br /></span><span>}</span><span><br />pre</span><span>.</span><span>prettyprint </span><span>{</span><span> padding</span><span>:</span><span> </span><span>12px</span><span>;</span><span> border</span><span>:</span><span> </span><span>1px</span><span> solid </span><span>#777; }</span><span><br /></span><span></style></span></pre><ul><li>在Blogger中，对需要语法高亮的代码，使用<pre class="prettyprint"></pre>包裹起来，代码显示效果如下：</li></ul><pre><span>public</span><span> </span><span>class</span><span> </span><span>HelloWorld</span><span> </span><span>{</span><span><br />        </span><span>/**<br />         * @param args<br />         */</span><span><br />        </span><span>public</span><span> </span><span>static</span><span> </span><span>void</span><span> main</span><span>(</span><span>String</span><span>[]</span><span> args</span><span>)</span><span> </span><span>{</span><span><br />                </span><span>// TODO Auto-generated method stub</span><span><br />                </span><span>System</span><span>.</span><span>out</span><span>.</span><span>println</span><span>(</span><span>"Hello World"</span><span>);</span><span><br />        </span><span>}</span><span><br /></span><span>}</span></pre>