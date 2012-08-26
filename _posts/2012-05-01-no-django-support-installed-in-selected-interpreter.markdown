--- 
title: no django support installed in selected interpreter
type: post
layout: post
tags: 
- Django
- !binary |
  5pyq5YiG57G7

---

After install django on Ubuntu 10.04 and select create django project in Pycharm, it report error: "no django support installed in selected interpreter"


### Why

Because Pycharm do not load the new django related variable. When create django project Pycharm could not find correct Python environment.


### Resolution
Launch your pycharm, file -> settings -> python interpreter -> reload


