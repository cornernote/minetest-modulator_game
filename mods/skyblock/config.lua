--[[

SkyBlock for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-skyblock
License: GPLv3

USER CONFIG

]]--

-- How far apart to set players start positions
skyblock.START_GAP = 64

-- Game mode (which block is the ocean in the void) - air | water | lava
skyblock.MODE = "air"

-- Level selection (which level files to use)
skyblock.LEVEL = "default"

-- The Y position the spawn nodes will appear
skyblock.START_HEIGHT = 4

-- How many players will be in 1 row
-- skyblock.WORLD_WIDTH * skyblock.WORLD_WIDTH = total players
skyblock.WORLD_WIDTH = 100

-- How far down (in nodes) before a player dies and is respawned
skyblock.WORLD_BOTTOM = -32

-- Delay between skyblock respawn checks
skyblock.SPAWN_THROTLE = 2

-- Nodes above the spawn node where players are spawned
skyblock.SPAWN_HEIGHT = 4

-- Debug mode
skyblock.DEBUG = 1

-- File path and prefix for data files
skyblock.FILENAME = minetest.get_worldpath()..'/skyblock'
