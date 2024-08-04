---
layout: default
title: |
    Challenge 01-B: Flappy Bird
categories: [game, 20-games-challenge]
genres: classic arcade
tags: [20 game challenge, game making, godot]
og_image: assets/img/20_games/01-B_flappy_bird_icon_r.svg
warnings: none
excerpt: "First challenge (part 2)"
built_in: Godot v4.1
start_date: 10-11-23
completed_date: 10-27-23
play_url_text: Play Flappy Bat
play_url: 
order: 2
---

 <div class="col-lg-12">
    <div class="bs-component">
        <ul class="nav nav-tabs montserrat">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#pic">Gameplay Screenshot</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#vid">Gameplay Video</a>
            </li>
        </ul>
        <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade show active" id="pic">
                <img src="/assets/img/20_games/01-B_flappy_bat_game.png" style="max-height: 393.75px">
            </div>
            <div class="tab-pane fade" id="vid">
                <div class="embed-responsive embed-responsive-16by9 my-2 chulapa-rounded-lg" itemscope itemprop="VideoObject" itemtype="https://schema.org/VideoObject">
                <video src="/assets/img/20_games/01-B_flappy_bat_gameplay_trimmed.mp4#t=0.1" class="embed-responsive-item u-video" controls itemprop="contentUrl" >
                Your browser does not support the video tag.
                </video>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

##### Flappy bird

Flappy bat, a bat themed version of Flappy bird.  

The game is made for a mobile layout with simple controls. You play the game by hitting the space bar to keep the bat in air. You have to pass through the gaps between stalactites and stalagmites without touching them to score a point. Touching a stalactite, stalagmite, or the ground results in a game over. There's no ending to the game, you can play as long as you want, or challenge yourself by beating your last high score.  

Flappy bat has the following features:

- **Game start**: Press any key to start.
- **Score tracking**: The game tracks the player score for each round, as well as the high score. The high score is preserved between game sessions.
- **Game over screen**: After a winner is declared, you can play again.
- **Effects**: A sound plays when a point is scored, or when the 

<!-- This jumbotron looks bad -->
<div class="jumbotron">
<p class="h1">Play Flappy Bat</p>
<hr class="my-4 hr-primary">
<a class="btn btn-info" href="/02-challenge-01-b-flappy-bird/play-flappy-bat" role="button">Play Flappy Bat</a>
</div>

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

[Challenge outline](https://20_games_challenge.gitlab.io/games/flappy/#goals) at the **20 Games Challenge site**.

### [Goals](https://20_games_challenge.gitlab.io/games/flappy/#goals)

- [x] Create a game world with a floor.
- [x] Add an object that represents the main character. Apply a constant force to the character so it falls to the floor.
- [x] Add obstacles on the left of the game area. The obstacles should slide across the screen toward the right. The obstacles will appear in pairs, with a vertical gap between them.
- [x] Detect when the character collides with the floor or obstacles, and reset the game when a collision occurs.
- [x] Accumulate one point for each obstacle that the player passes. Display the score.

## [Stretch Goals](https://20_games_challenge.gitlab.io/games/flappy/#stretch-goals)

- [x] Add some sounds that will play each time the player gains a point, and when the player loses.
- [x] Add a basic game-over screen to display the player’s score.
- [x] Add a menu and allow the player to reset the game.
- [x] Track the high-score between play sessions and display the high score alongside the current score.
- [x] Add some background art! Try layering the background and scrolling at a different rate to the foreground obstacles. This is called Parallax scrolling.

---

## Notes

- I imported over some of the code from Pong, for example the scoring, and modified it a bit as needed
- I thought that the high score and persistent score save would be a challenge but it took maybe 10 minutes.
- Once again ran into an issue of using `Area2D` nodes for the elements instead of `CharacterBody2D`, which meant figuring out collision manually.
- The player movement is also a little janky without the advantage of a `CharacterBody2D`. Even though I spent a lot of time tweaking the movement, the implementation was pretty simple.
- The only real puzzle with this one was how to track the point score. I opted for adding an `Area2D` with a `CollisionShape2D` just after the right edge of the pillar with a `Signal` to detect when the player successfully got to the other side of the pillar.
- I'd previously looked at parallax backgrounds so I knew what to do here.

## Retrospective

I went with Pong as the first challenge because of familiarity. I knew about Flappy Bird but I'd never played it. When I found a version online to play around with, I then discovered that I'm really, really bad at it.

Nevertheless, I wonder how it would have gone if I'd started with Flappy Bird instead of [Pong](games/20-games-challenge/01-challenge-01-pong). This was a much, much simpler game to start with, even with the stretch goals. The bulk of the time I spent in development was just making the assets for it. The actual game came together incredibly quickly.

I thought I'd have a little fun and make it a bat instead of a bird, and have the pillars be stalactites and stalagmites to make the aesthetic a bit more coherent than the original game.

	{%- if page.show_bottomnavs -%}
	  {%- include components/navbeforeafter.html -%}
	{%- endif -%}
	{%- if page.show_categories -%}
		{% assign size = page.categories | size %}
		{% if size > 0 %}
  	{%- include components/categories.html-%}
  	{% endif %}
	{%- endif -%}
	{%- if page.show_tags -%}
		{% assign size = page.tags | size %}
		{% if size > 0 %}
	  {%- include components/tags.html-%}
	  {% endif %}
	{%- endif -%}
	{%- if page.show_related -%}
	  {%- include components/related.html -%}
	{%- endif -%}