---
layout: page
permalink: /publications/
title: Publications
description: Publications in reverse chronological order.
years: [2021, 2020, 2016, 2013]
nav: true
---

<div class="publications">

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
