---
layout: page
title: Index
tagline: Wellcome
---
{% include JB/setup %}

# 記事
{% for post in site.posts %}
</p><hr><p>
{% if post.excerpt_tag %}
# {{ post.title }}
{{ post.excerpt_tag }}
<a href="{{ post.url }}">&raquo; Continue reading</a>
{% else %}
# {{ post.title }}
{{ post.content }}
{% endif %}
{% endfor %}
