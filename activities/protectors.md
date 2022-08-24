---
prevurl: /Activities/protectors/pastprotectors.html
title: Protectors of Insulae Draconis
subtitle: A historical record of the winners of Protectors Tournaments
---

<div class="row">
  <div class="col-md-1 d-none d-lg-inline">
  &nbsp;
  </div>
  <div class="col-md-2 d-none d-lg-inline">
    <img src="/images/protectors/archery_protector.gif" alt="Archery Protector badge">
  </div>
  <div class="col-md-2 d-none d-lg-inline">
    <img src="/images/protectors/arts_science_protector.gif" alt="A&S Protector badge">
  </div>
  <div class="col-md-2 d-none d-lg-inline">
    <img src="/images/protectors/equestrian_protector.gif" alt="Equestrian Protector badge">
  </div>
  <div class="col-md-2 d-none d-lg-inline">
    <img src="/images/protectors/heavy_protector.gif" alt="Armoured Combat Protector badge">
  </div>
  <div class="col-md-2 d-none d-lg-inline">
    <img src="/images/protectors/rapier_protector.gif" alt="Rapier Protector badge">
  </div>
  <div class="col-md-1 d-none d-lg-inline">
  &nbsp;
  </div>
</div>

<br />

{% for item in site.data.protectors.winners %}
<h2>{{ item.tournament }} - {{ item.year }}</h2>
  {% if item.venue %}{{ item.venue }}{% endif %}

  {% for protector in item.protectors %}<strong>{{ site.data.protectors.titles[ protector.field ]['title'] }}:</strong>
  {{ protector.name }}<br>{% endfor %}
{% endfor %}

