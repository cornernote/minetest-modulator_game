minetest.register_abm(
	{nodenames = {"default:cactus"},
    interval = 0.75,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    objs = minetest.env:get_objects_inside_radius(pos, 1)
	for k, obj in pairs(objs) do
		obj:set_hp(obj:get_hp()-1)
	end
	end,
})

minetest.register_node(":default:cactus", {
	description = "Cactus",
	tiles = {"default_cactus_top.png", "default_cactus_top.png", "default_cactus_side.png"},
	is_ground_content = true,
	groups = {snappy=2,choppy=3,flammable=2},
	drop = {
		items = {
			{
				items = {'cactusmod:cactus_fruit'},
				rarity = 20,
			},
			{
				items = {'default:cactus'},
			}
		}
	},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_craftitem("cactusmod:cactus_fruit", {
	description = "Cactus Fruit",
	inventory_image = "cactusmod_fruit.png",
	on_use = minetest.item_eat(3),
})

minetest.register_tool("cactusmod:cactus_club", {
	description = "Cactus Club",
	inventory_image = "cactusmod_club.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			fleshy={times={[1]=0.30, [2]=0.20, [3]=0.10}, uses=5, maxlevel=1},
			snappy={times={[2]=0.80, [3]=0.30}, uses=5, maxlevel=1},
			bendy={times={[2]=0.75, [3]=0.25}, uses=5, maxlevel=1},
			cracky={times={[3]=1.90}, uses=5, maxlevel=0}
		}
	}
})

minetest.register_craft({
	output = "cactusmod:cactus_club",
	recipe = {
		{"default:cactus", "default:cactus"},
		{"default:cactus", "default:cactus"},
		{"default:stick", ""}
	}
})

minetest.register_craft({
	output = "cactusmod:cactus_club",
	recipe = {
		{"default:cactus", "default:cactus"},
		{"default:cactus", "default:cactus"},
		{"", "default:stick"}
	}
})