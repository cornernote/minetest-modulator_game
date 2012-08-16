-- Minetest 0.4.1 mod: technic

minetest.register_alias("rebar", "technic:rebar")
minetest.register_alias("concrete", "technic:concrete")
minetest.register_alias("concrete_post", "technic:concrete_post")
minetest.register_alias("iron_chest", "technic:iron_chest")
minetest.register_alias("iron_locked_chest", "technic:iron_locked_chest")
minetest.register_alias("copper_chest", "technic:copper_chest")
minetest.register_alias("copper_locked_chest", "technic:copper_locked_chest")
minetest.register_alias("silver_chest", "technic:silver_chest")
minetest.register_alias("silver_locked_chest", "technic:silver_locked_chest")
minetest.register_alias("gold_chest", "technic:gold_chest")
minetest.register_alias("gold_locked_chest", "technic:gold_locked_chest")
minetest.register_alias("mithril_chest", "technic:mithril_chest")
minetest.register_alias("mithril_locked_chest", "technic:mithril_locked_chest")

dofile(minetest.get_modpath("technic").."/concrete.lua")
dofile(minetest.get_modpath("technic").."/iron_chest.lua")
dofile(minetest.get_modpath("technic").."/copper_chest.lua")
dofile(minetest.get_modpath("technic").."/silver_chest.lua")
dofile(minetest.get_modpath("technic").."/gold_chest.lua")
dofile(minetest.get_modpath("technic").."/mithril_chest.lua")
dofile(minetest.get_modpath("technic").."/electric.lua")
dofile(minetest.get_modpath("technic").."/wires.lua")
dofile(minetest.get_modpath("technic").."/dyes.lua")
--dofile(minetest.get_modpath("technic").."/ores.lua")


function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end


function hacky_swap_node(pos,name)
	local node = minetest.env:get_node(pos)
	local meta = minetest.env:get_meta(pos)
	local meta0 = meta:to_table()
	if node.name == name then
		return nil
	end
	node.name = name
	local meta0 = meta:to_table()
	minetest.env:set_node(pos,node)
	meta = minetest.env:get_meta(pos)
	meta:from_table(meta0)
	return 1
end