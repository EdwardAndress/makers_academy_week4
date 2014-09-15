Battleships
===========

This was a week 4 group project at Makers Academy to implement a two-player game of Battleships in the Terminal.

###Specification

+ Each player has a grid of 10x10
+ Each player has 5 ships of various lengths
+ Each player puts the ships on their grid.
+ Each player takes it in turns to guess if a square on their opponents grid is occupied.
+ The player can see where he palced the shot on his opponents grid and, if it struck a ship, the type of ship it was.
+ The first player to sink all of his opponents ships wins.

###Technologies used

+ Ruby
+ RSPEC
+ Git

###How to set it up

```sh
git clone https://github.com/aitkenster/Battleships.git
```

###How to run it

```sh
cd Battleships
irb
require './lib/game_engine.rb'
Game.new.play

```

###How to test it

```sh
cd Battleships
rspec
``` 

###Future Improvements

+ Change error handling so the game will continue if you try to place a boat or take a shot off the grid, rather than raising an error
+ Refactor the RSPEC tests. Some of them are more integration than functional.

