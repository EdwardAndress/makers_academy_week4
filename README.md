Battleships
===========

This was a week 4 group project at Makers Academy. The project was to implement a two-player game of Battleships in the Terminal, using Ruby and RSpec.

##Notes
========

Each player has a grid of 10x10

Each player has 5 ships of various lengths

Each player puts the ships on their grid.

Each player takes it in turns to guess if a square on their opponents grid is occupied.

The player can see where he palced the shot on his opponents grid and, if it struck a ship, the type of ship it was.

The first player to sink all of his opponents ships wins.

###Player
======

Responsiblity				Collaborators

Place the ships				Grid and ships
Shoot
Takes turns

###Grid
====

Responsibility				Collaborators

Show the shots				Player and ships
Can hold ships				Ships
Know when game ends
Knows ship locations	Ships

###Ships
=====

Responsibility				Collaborators

Can be shot 					Player
Knows when hit				Grid
Knows when sunk				Grid

###Water
=====

Responsilbility				Collaborators

Knows when hit				Grid

