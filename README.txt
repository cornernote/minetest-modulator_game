----------------------------------
SEABLOCK FOR MINETEST
----------------------------------


Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>

Source Code: https://github.com/cornernote/minetest-seablock_game
License: GPLv3



----------------------------------
DESCRIPTION
----------------------------------


Build a world starting from a small island in the sea.

This game has many mods installed for a fun and interesting gaming experience.

To view the items and craft recipies, please visit the SeaBlock Game Wiki:
http://cornernote.net/minetest/seablock/wiki



----------------------------------
INSTALL INSTRUCTIONS
----------------------------------


1) rename cornernote-minetest-seablock_game-* to seablock_game
2) move seablock_game into /minetest/games/



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

Thank you to the minetest community who has shared their code and knowledge with me.

** COMING SOON - list of mods and authors **