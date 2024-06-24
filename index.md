---
layout: landingpage
header_type: none
---

<img src="assets/img/covers/site_banner.jpg" class="img-landing-banner img-circle">

{% capture landing_body %} 
I fancy myself something of a renaissance man, in the sense that I have a lot of creative passion paired with a short attention span.

This site is a place for me to collect and chronicle my various creative works. Expect to find a hodgepodge of subjects, including:   
<br>
<br>
<ul>
    <li>visual art</li>
    <li>prose</li>
    <li>sculpting</li>
    <li>textile work</li>
    <li>game development</li>
</ul>
…along with any other artistic pursuit that captures the attention of my magpie brain.
{% endcapture %}

{% include components/jumbotron.html
jumbotron_lead="I’m Justin, a queer storyteller, artist, and lover of all things spooky, fantastical, romantic, and macabre." 
jumbotron_body=landing_body %}

<br>
<br>

{% include_cached components/indexcards.html cacheddocs=site.blog cachedlimit=3 %}
