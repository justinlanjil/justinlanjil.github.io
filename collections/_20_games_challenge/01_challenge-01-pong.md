---
layout: default
title: |
    Challenge 01: Pong
categories: [game, 20-games-challenge]
genres: classic arcade
tags: [20 game challenge, game making, godot]
og_image: assets/img/20_games/01_pong_icon_r.svg
warnings: none
excerpt: "First challenge"
order: 1
built_in: Godot v4.1
start_date: 01-01-23
completed_date: 01-01-23
play_url_text: Play Pong
play_url: 
---

<!-- card with game info -->
<!-- whoops the card formatting is hecked when u change backgrounds -->
<div class="card border-primary mb-3">
    <div>
    <!-- Godot 4 HTML web export doesn't work on mac right now rip lol -->
     <iframe src="/assets/games/20games/20games_pong/index.html" width="100%" height="500" title="Play Pong"></iframe> 
    </div>
    <div class="card-body">
        <p class="card-text">Do a blurb about the game here</p>
    </div>
    <div class="card-body">
        <h5 class="mb-4 text-right"><a href="{{ post.play_url }}" role="button">{{ page.play_url_text }}<i class="fa-solid fa-arrow-right"></i></a></h5>
    </div>
    <ul class="list-group list-group-flush">
        <li class="list-group-item"><strong class="montserrat">Built in:</strong> {{ page.built_in }}</li>
        <li class="list-group-item"><strong class="montserrat">Started:</strong> {{ page.start_date }}</li>
        <li class="list-group-item"><strong class="montserrat">Completed:</strong> {{ page.completed_date }}</li>
    </ul>
</div>

## Challenge outline checklist

[Challenge outline](https://20_games_challenge.gitlab.io/games/pong/#goals) at the **20 Games Challenge site**.

{% capture c-goals %}
### [Goals](https://20_games_challenge.gitlab.io/games/pong/#goals)

- [x] Create an arena with two walls and a divider.
- [x] Add a paddle on either end of the play field. Use player inputs to move the paddles up and down.
- [x] Add a ball that moves around the playfield and bounces off of the paddles and walls.
- [x] Detect when the ball leaves the playfield. Assign a point to the player who scored.
- [x] Track and display the score for each player.
{% endcapture %}

## [Stretch Goals](https://20_games_challenge.gitlab.io/games/pong/#stretch-goals)

- [x] Write an AI script that can follow the ball so you can play with only one player.
- [x] Hint: Following the ball with a paddle is easy, but it makes the opponent impossible to beat. You might want to make the AI less than perfect somehow.
- [x] Add a menu and allow the player to reset the game.
- [x] Add some basic sounds. Play a sound every time the ball collides with something, and every time a player scores.

### Custom stretch goals

- [x] Add a two player mode
- [x] Let the player choose between game modes from the main menu

--- 

## Notes

* I made a few adjustments, making things much more difficult for myself.
* I'm not sure I agree with this as an easy first challenge, at least with the stretch goals. 

--- 

## Retrospective

Pong ended up being a huge challenge, this th