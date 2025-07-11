---
layout: default
title: |
    Challenge 3: River raid (in progress)
categories: [game, 20-games-challenge]
genres: classic arcade
tags: [20 game challenge, game making, godot]
og_image: assets/img/20_games/02_breakout_icon.svg
warnings: none
excerpt: "Third challenge."
built_in: Godot v4.3s
start_date: 08-11-24
completed_date: IN PROGRESS
play_url_text: Play River raid
play_url: 
order: 4
---


 <div class="col-lg-12">
    <div class="bs-component">
        <ul class="nav nav-tabs montserrat">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#pic">Gameplay Screenshot</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#">Gameplay Video (WIP)</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade show active" id="pic">
                <p>INCOMING</p>
            </div>
            <div class="tab-pane fade" id="vid">
                <p>INCOMING</p>
            </div>
        </div>
    </div>
</div>

<br>

##### Breakout

River raid is in development.

<br>

<div class="card border-primary mb-3">
    <div class="card-header bg-primary">Game development stats</div>
    <div class="card-body">
    <ul class="list-group list-group-flush">
        <li class="list-group-item"><strong class="montserrat">Built in:</strong> {{ page.built_in }}</li>
        <li class="list-group-item"><strong class="montserrat">Started:</strong> {{ page.start_date }}</li>
        <li class="list-group-item"><strong class="montserrat">Completed:</strong> {{ page.completed_date }}</li>
    </ul>
    </div>
</div>

## Challenge outline checklist

[Challenge outline](https://20_games_challenge.gitlab.io/games/river_raid) at the **20 Games Challenge site**.

### [Goals](https://20_games_challenge.gitlab.io/games/river_raid/#goal)

- [x] Create and animate a jet fighter. The screen will scroll vertically, and the jet can move side to side. The player can accelerate or brake, which will change the vertical scrolling speed.
- [ ] Add a river bank on both sides of the level. The river can vary in size, or even split into two streams. Hitting the river bank will kill the player.
- [ ] Divide the game into levels. Between levels, the river will narrow, and there will be a bridge crossing it. Bridges act as checkpoints. The player must shoot the bridge, colliding with it will kill the player.
- [ ] Add some enemies! Boats and helicopters will move back and forth across the river. Jets will cross the entire screen. Colliding with an enemy will kill the player.
- [ ] Add fuel depots. Flying over these will replenish the player’s fuel reserves. The player can shoot and destroy fuel depots, but colliding with them doesn’t kill the player.
- [ ] Add a UI with a life counter, score, and fuel gauge. The fuel gauge will drain slowly, and the player will die if it reaches “empty”
- [x] Give the player the ability to shoot things! Shooting things increases the player score.

## [Stretch Goals](https://20_games_challenge.gitlab.io/games/river_raid/#stretch-goal)

- [ ] Not sure how to make the game infinitely long? The easy way would be to create multiple hand-crafted levels that start and end with a bridge. The fun way would be to generate the levels dynamically on the fly.
- [ ] The Atari 2600 could only display limited sprites. Modern computers are capable of creating massive particle effect explosions. You know what to do 😉

--- 

## Notes

I'm going to just start this one with basic placeholder blocks in order to get the mechanics down before I commit to any real asset building.

<!-- still in progress
## Retrospective

I almost skipped this one but then I decided it would be funny to do a [Cask of Amontillado](https://poemuseum.org/the-cask-of-amontillado/) theme, with a reveal at the end. I'm glad I did

{%- include snippets/blog_signature.html -%}
-->