---
layout: default
title: Interactive fiction
subtitle: Games index page
permalink: /games
header_type: hero
show_date         : false
show_bottomnavs   : true
show_sociallinks  : false
show_author       : false
show_breadcrumb   : false
show_toc          : false
---

<!-- I think scrap this? and just use the story index info page template TBH. Yeah. -->
<!-- omg there's literally img/img overlay classes, look at default blog post -->
<!-- Mary's Hare -->
{% capture mh_content %}
Mary's Hare is short interactive horror story about a woman and a rabbit, based on the story of <a href="http://mentalfloss.com/article/54643/woman-who-gave-birth-rabbits">Mary Toft</a>.
{% endcapture %}

{% include snippets/image_with_text.html
img_layout="left"
img_url="/assets/img/covers/games/marys_hare.jpg"
title="Mary's Hare"
content=mh_content
button_link="https://wicked-little-tongue.itch.io/marys-hare"
button_text="play on itch.io" %}

<!-- Neighbour & Way -->
{% capture nw_content %}
<p>You are living in a gloomy flat in the city. A mysterious woman has just moved in upstairs and though you haven’t seen her, her servant has stopped by for a favour.</p>
<p>They say good fences make good neighbours, but what harm could come from being friendly?</p>
{% endcapture %}

{% include snippets/image_with_text.html
card_class="border-light"
img_layout="right"
img_url="/assets/img/covers/games/neighbour_and_way.jpg"
title="Neighbour & Way"
content=nw_content
button_link="https://wicked-little-tongue.itch.io/neighbour-and-way"
button_text="play on itch.io" %}