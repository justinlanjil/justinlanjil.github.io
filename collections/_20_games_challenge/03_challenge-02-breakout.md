---
layout: default
title: |
    Challenge 2: Breakout(in progress)
categories: [game, 20-games-challenge]
genres: classic arcade
tags: [20 game challenge, game making, godot]
og_image: assets/img/20_games/02_breakout_icon.svg
warnings: none
excerpt: "Second challenge."
built_in: Godot v4.1
start_date: 10-28-23
completed_date: IN PROGRESS
play_url_text: Play Breakout
play_url: 
order: 3
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
                <img src="/assets/img/20_games/03_challenge-breakout_mockup_initial_sketch.jpg" style="max-height: 393.75px;">
                <p> Breakout initial mockup sketch.</p>
            </div>
            <div class="tab-pane fade" id="vid">
                <div class="embed-responsive embed-responsive-16by9 my-2 chulapa-rounded-lg" itemscope itemprop="VideoObject" itemtype="https://schema.org/VideoObject">
                <video src="/assets/img/20_games/01_pong_game_play_trimmed.mp4#t=0.1" class="embed-responsive-item u-video" controls itemprop="contentUrl" >
                Your browser does not support the video tag.
                </video>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

##### Breakout

Breakout is in development.

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

[Challenge outline](https://20_games_challenge.gitlab.io/games/breakout) at the **20 Games Challenge site**.

### [Goals](https://20_games_challenge.gitlab.io/games/breakout/#goal)

- [x] Create a game space with walls and a ceiling.
- [x] Add a paddle that can be moved left and right via player inputs.
- [x] Add a ball that will bounce off of the paddle, walls, and ceiling.
- [x] Add square game objects (bricks) into the top of the game space.
- [x] Enable the ball to bounce off of the bricks. When the ball bounces, the brick should disappear.
    - [x] Breaking a brick should add to the player’s score.
    - [ ] The ball’s speed should increase as bricks are broken.
- [x] The score should be displayed, as well as a life counter. The player starts with three lives.
- [x] If the player misses the ball, a life should be subtracted. When all lives are used, the game ends.

## [Stretch Goals](https://20_games_challenge.gitlab.io/games/breakout/#stretch-goal)

- [x] Save the high score between play sessions and display it alongside the player score.
- [x] Add different colors to the bricks in the rows. (The original game was black-and-white, but had a colored film on the screen, simulating colored rows of bricks)
- [ ] ~~The paddle should get narrower once the ball reaches the ceiling.~~ SKIPPING THIS ONE

### Custom stretch goals

- [x] Add extra tough bricks
- [ ] Visual reveal on a game win
- [x] Add game over screen

--- 

## Notes

I took a few big breaks (heh) during this one for various reasons, so it took a lot longer than I thought originally.

Even though the whole reason I committed to this one was for the visual gag and theme, I was really struggling to have fun making the assets. I kept jumping back and forth between using raster and vector graphics, and it turned into a huge time sink.

### The bricks

Set up went really smooth until the bricks. Those heckin' bricks. I made a `TileMap` and figured out how to set up the collision, but for some reason the collision wasn't mapped correctly, no matter what I did. This meant that the wrong brick would disappear, or more commonly, the ball would it a brick and bounce, but the brick wouldn't disappear. Suspecting that the problem was with trying to map local and global coordinates against the node's position offset, I opened a new project and found the same problem. I stil can't figure out _why_. The upside is that I learned a lot about `TileMap` nodes. The main takeaways from the attempts were:

- Don't offset the `Tilemap` node.
- As part of the above, if I plan to use a `Tilemap` at any point, then design from the start with the tile grid in mind. 

In the end I gave up on the `TileMap` idea and instead made the bricks with a bunch of instanced `Area2D` nodes. I opted for creating functions to generate the bricks from the script instead of manually placing them with the visual editor. I had to look up a few tutorials for this part, but once again I modified the code I found to suit my needs. Forloops always trip me up, no matter what the programming language is. I wrote a lot of code that ended up being useless or redundant, but it was a great learning experience for how to access and get information, so it wasn't a waste of time. Or so I keep telling myself.  

<!-- still in progress
## Retrospective

I almost skipped this one but then I decided it would be funny to do a [Cask of Amontillado](https://poemuseum.org/the-cask-of-amontillado/) theme, with a reveal at the end. I'm glad I did

{%- include snippets/blog_signature.html -%}
-->