--- 
title: Failed to build gem native extension
type: post
layout: post
tags: 
- Gem
- Ruby
---

		sudo gem install jekyll
		Building native extensions. This could take a while...
		ERROR: Error installing jekyll:
		ERROR: Failed to build gem native extension.

		/usr/bin/ruby1.9.2 extconf.rb
		extconf.rb:1:in require': no such file to load -- mkmf (LoadError) from extconf.rb:1:in'

####How to FIX it ?

		sudo aptitude install ruby1.9.2-dev

