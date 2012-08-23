----------------------------------
SKYBLOCK FOR MINETEST
----------------------------------


Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>

Source Code: https://github.com/cornernote/minetest-skyblock
License: GPLv3



----------------------------------
DESCRIPTION
----------------------------------


Build a world starting from a small island in the sky.

Here is a video by SlamacowCreations made in MineCraft that helps explain the concept:
http://www.youtube.com/watch?v=fsk7uZI4_NI


-- So, this is just minetest without mapgen? --

Well, yes and no. This release is intended to be a MINIMAL skyblock game aimed mostly 
at other developers.  I am expecting that I will release several variations as more
complete games, and that other developers may do the same.


-- What else will this change in my game? --

* WARNING * - this mod will disable all map generation in any world the mod is active!

Because of this, some things have to be different:
- death results in restarting at a new position (you lose)
- falling below skyblock.WORLD_BOTTOM results in death
- flowing lava and water collide to make stone
- dig stone to randomly drop some items
- crafts to allow access to all items
- prevent chopping down trees with bare hands
- abm and function to grow trees so the shape is different
- abm to turn dirt to dirt_with_grass and back



----------------------------------
INSTALL INSTRUCTIONS
----------------------------------


1) rename cornernote-minetest-skyblock-* to skyblock

2.a) as a mod
move skyblock into /minetest/mods/minetest/
OR
2.b) as a game mode
copy /minetest/games/minetest_game to /minetest/games/skyblock_game
move skyblock into /minetest/games/skyblock_game/mods/



----------------------------------
BUILD CHALLENGES
----------------------------------

Your mission is to build the following:

1) stone generator
2) tree farm
3) a house
4) infinite water source
5) external house decoration
6) water feature
7) internal house decoration
8) small lake
9) underground room in your house
10) something not provided by default (you have to install a mod)

BONUS) post a screenshot to the link below (feel free to post your progress screenshots too!)
http://minetest.net/forum/viewtopic.php?id=2799



----------------------------------
PLAYING INSTRUCTIONS
----------------------------------


-- Death Hurts --

If you fall below skyblock.WORLD_BOTTOM you will have to restart at a new spawn point.


-- Crafting --

You may notice you cannot chop down trees or dig the stone with your bare hands.  

Put the tree in your craft grid and you will receive 4 wood.
Put one of the wood back into the craft grid and you will receive 4 sticks.

S-S  <-- Bucket
-S-  S=steel ignot
---

WW-  <-- Wooden Axe
WS-  W=wood, S=stick
-S-

WWW  <-- Wooden Pickaxe
-S-  W=wood, S=stick
-S-

WWW  <-- Chest
W-W  W=wood
WWW

CCC  <-- Furnace
C-C  C=cobblestone
CCC

To learn all of the crafts you can either peek inside the register_craft.lua file, or 
install one of these mods:
Craft Guide - http://minetest.net/forum/viewtopic.php?id=2334
Game Wiki - http://minetest.net/forum/viewtopic.php?id=2479


-- Stone Generator --

While you wait for your tree to grow, you should probably create a stone generator.  
This is done by placing lava and water next to each other with air between.


-- Tree Farm --

Noticed those leaves in your inventory?  Craft them into a sapling then throw it on 
the ground and it will grow into a tree.  Perhaps even an apple or jungle tree!

LLL  L=leaves   <-- Sapling
LLL  S=stick
-S-  - empty


-- Infinite Water --

If you want to create more water simply place your 2 water sources so they touch 
diagonally.  Now when you take one with the bucket, it will be replaced.


-- What's Next --

The rest is up to you.  Load your favorite minetest mods and start building your world!



----------------------------------
SINGLEPLAYER MAP
----------------------------------

I have included 2 worldedit schems that will allow you to load the L-shaped map similar to 
the video above.

schems/skyblock.we      <-- just the dirt
schems/skyblock_plus.we <-- dirt, chest and tree

To load them into your world, you must have the worldedit mod installed:
https://github.com/Uberi/MineTest-WorldEdit
http://minetest.net/forum/viewtopic.php?id=572

Copy the *.we files into: /minetest/worlds/[yourworld]/schems
Then issue the following chat commands:
//pos1
//load skyblock_plus

You should now have an L-shaped island in the middle of your void.

If you still have a spawnblock that you cannot remove, issue the chat command:
//p set
Then punch the block twice, then issue the chat command: 
//set air



----------------------------------
MULTIPLAYER SUPPORT
----------------------------------

Although the default settings will work, you may want to consider the starting positions.

Each player is given a unique spawn position in an outwards spriral.

If skyblock.WORLD_WIDTH=5 then players will be assigned in the following positions:
(looking down)

x+5|  21  22  23  24  25
   |
x+4|  20  07  08  09  10
   |
x+3|  19  06  01  02  11
   |
x+2|  18  05  04  03  12
   |                      <-- The distance between the players is 
x+1|  17  16  15  14  13      defined by skyblock.START_GAP.
   +--------------------
     z+1 z+2 z+3 z+4 z+5

Note:
Your world will be limited to skyblock.WORLD_WIDTH*skyblock.WORLD_WIDTH players.



----------------------------------
License
----------------------------------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.



----------------------------------
Credits
----------------------------------

Thank you to the minetest community who has shared their code 
and knowledge with me.

Special thanks in this mod to:
PilzAdam - code to make a tree came from his farming mod
RealBadAngel - help in IRC to make the spiral
anyone else who i borrowed code from =)

