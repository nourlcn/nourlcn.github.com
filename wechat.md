---
layout: master
title: Wechat
---

<table class='post-list'>
{% for post in site.posts %}
    {% if post.wexin == 'true' %}
        <tr>
          <th><a href='{{ post.url }}'>{{ post.title }}</a></th>
          <td align="left">{{ post.date | date_to_string }}</td>
        </tr>
    {% endif %}
{% endfor %}
</table>
