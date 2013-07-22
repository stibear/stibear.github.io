---
layout: page
title: Index
tagline: Wellcome
---
{% include JB/setup %}

# 記事
{% for post in site.posts %}
---
# {{ post.title }} <small>{{ post.date | date: "%Y-%m-%d" }}</small>
{{ post.content | split:"<!-- more -->" | first }}
<a href="{{ post.url }}">&raquo; Continue reading</a>
{% endfor %}
