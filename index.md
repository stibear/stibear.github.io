---
layout: page
title: Index
tagline: Wellcome
---
{% include JB/setup %}

# 記事
{% for post in site.posts %}
</p><hr><p>
# {{ post.title }}
{{ post.content | split:"<!-- more -->" | first }}
<a href="{{ post.url }}">&raquo; Continue reading</a>
{% endfor %}
