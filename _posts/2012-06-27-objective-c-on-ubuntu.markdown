--- 
title: Objective C on Ubuntu
type: post
layout: post
tags: 
- Objective-C
- Ubuntu
---
OC,,Mac,Linux.<br />,Linux+OC,,,Google.<br /><h2>/</h2><div><pre><code><span>apt</span><span>-</span><span>get</span> <span>install</span> <span>gnustep</span> <span>gobjc</span> <span>gnustep</span><span>-</span><span>devel</span><br /></code></pre></div><br /><h2>helloworld.m</h2><div><pre><code><span>#import <Foundation/Foundation.h></span><br /><span>int</span> <span>main</span> <span>(</span><span>int</span> <span>argc</span> <span>,</span> <span>const</span> <span>char</span> <span>*</span><span>argv</span><span>[])</span> <span>{</span><br />    <span>NSAutoreleasePool</span> <span>*</span><span>pool</span> <span>=</span> <span>[[</span><span>NSAutoreleasePool</span> <span>alloc</span> <span>]</span> <span>init</span><span>];</span><br />    <span>NSLog</span><span>(</span><span>@</span><span>"Hello World!"</span><span>);</span><br />    <span>[</span><span>pool</span> <span>drain</span><span>];</span><br />    <span>return</span> <span>0</span><span>;</span><br /><span>}</span><br /></code></pre></div><br /><h2></h2><div><pre><code><span>gcc</span> <span>-</span><span>o</span> <span>-</span><span>I</span>  <span>/usr/in</span><span>clude</span><span>/</span><span>GNUstep</span> <span>helloworld</span> <span>helloworld</span><span>.</span><span>m</span> <span></span><br /><span>-</span><span>fconstant</span><span>-</span><span>string</span><span>-</span><span>class</span><span>=</span><span>NSConstantString</span> <span>-</span><span>lobjc</span>  <span>-</span><span>lgnustep</span><span>-</span><span>base</span> <br /></code></pre></div><br /><h2></h2><div><pre><code><span>.</span><span>/helloworld</span><br /></code></pre></div><br /><h2></h2><div><pre><code><span>2012</span><span>-</span><span>05</span><span>-</span><span>24</span> <span>20</span><span>:</span><span>23</span><span>:</span><span>21</span><span>.</span><span>208</span> <span>helloworld</span><span>[</span><span>20262</span><span>]</span> <span>Hello</span> <span>World</span><span>!</span></code></pre>

</div>
