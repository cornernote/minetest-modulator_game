--[[

SkyBlock for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-skyblock
License: GPLv3

REGISTER CRAFT

]]--


-- tool repair buff (20% bonus)
minetest.register_craft({
	type = "toolrepair",
	additional_wear = -0.20,
})

-- desert_stone
minetest.register_craft({
	output = "default:desert_stone",
	recipe = {
		{"default:desert_sand", "default:desert_sand"},
		{"default:desert_sand", "default:desert_sand"},
	}
})

-- mossycobble
minetest.register_craft({
	output = "default:mossycobble",
	recipe = {
		{"default:junglegrass"},
		{"default:cobble"},
	}
})

-- stone_with_coal
minetest.register_craft({
	output = "default:stone_with_coal 2",
	recipe = {
		{"default:coal_lump"},
		{"default:stone"},
	}
})

-- stone_with_iron
minetest.register_craft({
	output = "default:stone_with_iron 2",
	recipe = {
		{"default:iron_lump"},
		{"default:stone"},
	}
})

-- gravel
minetest.register_craft({
	output = "default:gravel 4",
	recipe = {
		{"default:cobble"},
	}
})

-- dirt
minetest.register_craft({
	output = "default:dirt 2",
	recipe = {
		{"default:gravel"},
	}
})

-- clay_lump
minetest.register_craft({
	output = "default:clay_lump 4",
	recipe = {
		{"default:dirt"},
	}
})

-- scorched_stuff
minetest.register_craft({
	type = "cooking",
	output = "default:scorched_stuff 4",
	recipe = "default:dry_shrub",
})

-- dirt_with_grass
minetest.register_craft({
	output = "default:dirt_with_grass",
	recipe = {
		{"default:junglegrass"},
		{"default:dirt"},
	}
})

-- locked_chest from chest
minetest.register_craft({
	output = "default:chest_locked",
	recipe = {
		{"default:steel_ingot"},
		{"default:chest"},
	}
})

-- sapling from leaves and sticks
minetest.register_craft({
	output = "default:sapling",
	recipe = {
		{"default:leaves", "default:leaves", "default:leaves"},
		{"default:leaves", "default:leaves", "default:leaves"},
		{"", "default:stick", ""},
	}
})

-- recycle ignots from block
minetest.register_craft({
	output = "default:steel_ingot 9",
	recipe = {
		{"default:steelblock"},
	}
})

-- recycle sand from sandstone
minetest.register_craft({
	output = "default:sand 4",
	recipe = {
		{"default:sandstone"},
	}
})

-- recycle desert_sand from desert_stone
minetest.register_craft({
	output = "default:desert_sand 4",
	recipe = {
		{"default:desert_stone"},
	}
})

-- jungletree turns to wood
minetest.register_craft({
	output = "default:wood 4",
	recipe = {
		{"default:jungletree"},
	}
})

-- mese
minetest.register_craft({
	output = "default:mese",
	recipe = {
		{"default:steelblock", "default:steelblock"},
		{"default:steelblock", "default:steelblock"},
	}
})

