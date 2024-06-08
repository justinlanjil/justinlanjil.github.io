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
start_date: 07-22-23
completed_date: 10-11-23
play_url_text: Play Pong
play_url: 
---

<div class="card border-primary mb-3">
    <div>
    <!-- Godot 4 HTML web export doesn't work on mac right now rip lol -->
     <!-- 
     <iframe src="/assets/games/20games/20games_pong/index.html" width="100%" height="500" title="Play Pong"></iframe> 
     -->
     [Add in a screenshot or gif here for now]
    </div>
    <div class="card-body">
        <p class="card-text">Do a blurb about the game here</p>
    </div>
    <!-- Add button in when web export is fixed
    <div class="card-body">
        <h5 class="mb-4 text-right"><a href="{{ post.play_url }}" role="button">{{ page.play_url_text }}<i class="fa-solid fa-arrow-right"></i></a></h5>
    </div>
    -->
    <ul class="list-group list-group-flush">
        <li class="list-group-item"><strong class="montserrat">Built in:</strong> {{ page.built_in }}</li>
        <li class="list-group-item"><strong class="montserrat">Started:</strong> {{ page.start_date }}</li>
        <li class="list-group-item"><strong class="montserrat">Completed:</strong> {{ page.completed_date }}</li>
    </ul>
</div>

## Challenge outline checklist

[Challenge outline](https://20_games_challenge.gitlab.io/games/pong/#goals) at the **20 Games Challenge site**.

### [Goals](https://20_games_challenge.gitlab.io/games/pong/#goals)

- [x] Create an arena with two walls and a divider.
- [x] Add a paddle on either end of the play field. Use player inputs to move the paddles up and down.
- [x] Add a ball that moves around the playfield and bounces off of the paddles and walls.
- [x] Detect when the ball leaves the playfield. Assign a point to the player who scored.
- [x] Track and display the score for each player.

## [Stretch Goals](https://20_games_challenge.gitlab.io/games/pong/#stretch-goals)

- [x] Write an AI script that can follow the ball so you can play with only one player.
- [x] Add a menu and allow the player to reset the game.
- [x] Add some basic sounds. Play a sound every time the ball collides with something, and every time a player scores.

### Custom stretch goals

- [x] Add a two player mode
- [x] Let the player choose between game modes from the main menu
- [x] Let the player return to the main menu from the pause and game over menus to change modes

--- 

## Notes

I made things much more difficult for myself than was really necessary by adding in a two player mode, with the option for the player to switch between modes. I also used `Area2D` nodes instead of physics bodies, which required more manual work for things like collision and ball movement.

Part of the challenge is to not look at tutorials. At least at the beginning, following the spirit of the rule is more important than the letter. The rule is there to keep you from just following a tutorial or recipe, and instead to actually learn how the engine you're using works. But this was my first game and everything was overwhelming and confusing. I looked at a bunch of different tutorials to get a sense of how things _could_ be done. It was especially valuable to do this when I got really, really stuck.

For each element that introduced a new concept, I spent extra time doing a deep dive and learning about the concept before moving on. This obviously slowed down progress but I did learn a lot beyond the surface level.

If I decide to revisit Pong when I've learned more, my main fixes would be:

- Make the paddles smaller. Making them one-third of the screen height makes it too easy to score a point, and negates the disadvantage of the enemy paddle's weakness.
- Cleaner code my goodness. The final game is a mess, but I'm too scared to make any more changes in case I break everything again

## Retrospective

Pong ended up being a huge challenge. It's more than a little embarassing that it took 4 months to make Pong of all things. But I did get there, so that's something. In my defense, I really took my time to learn as much as I could. Like, I have a 60 page document of detailed progress logs and notes about Godot concepts as I learned (_which I am not going to add on the site haha_).

As for the challenge itself; following the challenge as a new developer, I'm not sure I entirely agree with this choice for an easy first challenge. At least with the stretch goals. Later challenges introduce most of the stretch goal concepts, and I think it would have been better to keep Pong simpler. It was such a slog to get to that final stretch goal that I didn't really feel much joy when I finally got it done. And there were so many points where I did have a working game, then started on the next stretch goal and immediately broke everything again.

My biggest pain point is the same one that has always stopped me short in my attempts to learn programming languages beyond html and css: how to create communication between elements. Godot has a great philosophy <!-- not system, philosophy? --> of [Call Down, Signal Up](#). It's easy to grasp the theory, but I got stuck on how to get my scenes to communicate pretty much constantly. I still didn't really have a handle on it by the end of the game, but I got _something_ done, and there will plenty of opportunity moving forward to get a better understanding of how to build better design and structure.

{%- include snippets/blog_signature.html -%}