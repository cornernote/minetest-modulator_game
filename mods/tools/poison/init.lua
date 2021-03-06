-- Poison mod
-- lkjoel

-- Poison
minetest.register_node("poison:poison", {
	description = "Poison",
	tiles = {"poison.png"},
	inventory_image = "poison.png"
})

-- Poison craft
minetest.register_craft({
	type = "cooking",
	output = "poison:poison",
	recipe = "default:mossycobble"
})

-- Craft for Poisoned Apple
minetest.register_craft({
	output = "poison:poisoned_apple",
	recipe = { {"poison:poison","default:apple"}, }
})

-- Poisoned Apple
minetest.register_node("poison:poisoned_apple", {
	description = "Poisoned Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"poison_apple.png"},
	inventory_image = "poison_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3,dig_immediate=3,flammable=2},
	on_use = minetest.item_eat(-50),
	sounds = default.node_sound_defaults()
})

