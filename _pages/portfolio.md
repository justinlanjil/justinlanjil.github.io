---
layout: default
title: Portfolio
subtitle: Showing all the different Bootstrap components available
permalink: /portfolio
date: 2023-12-28
last_modified_at: 2023-12-28
header_type: hero
show_date         : false
show_bottomnavs   : true
show_sociallinks  : false
show_author       : false
show_breadcrumb   : false
show_toc          : false
---

## Sample carousel

This works but is just pointing to "gallery", so how do I add a sub-gallery? It doesn't seem to work if I put the front matter in here?? I should be able to override the front matter here. Might have just been a syntax issue.

Oh I think I just set up multiple instances in the config.yml

YEP! That's easy enough, then I just call what I want here!

{% include snippets/carousel.html internal="gallery" interval=2000 indicators="true" %}

## Image caption example

![example image](/assets/img/placeholder/placeholder_image159to1.jpg)

This is a caption
{: .caption}

How do I add the caption to the carousel though?

## Card test

This is supposed to be a card but idk it's not really working
{: .card .bg-primary}

Oh maybe i need an include?

## Modal test

{% include components/modal.html %}

## Carousel in modal test

It does work, but I can't click into it

{% include components/carousel_modal.html %}

## Masonry gallery example

Yeah I don't need to make a new gallery, just keep the images even!

{% include_cached snippets/masonry.html internal="placeholder" %}
