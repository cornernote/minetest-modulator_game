dofile(minetest.get_modpath("traps").."/mine.lua")
dofile(minetest.get_modpath("traps").."/cage.lua")
dofile(minetest.get_modpath("traps").."/lava.lua")


if not minetest.get_modpath("bobblocks") then
   dofile(minetest.get_modpath("traps").."/spikes.lua")
end

minetest.register_craft({
output="traps:cage",
recipe={
{"","default:mese",""},
{"","default:mese",""},
{"","default:dirt",""}}
})

minetest.register_craft({
output="traps:mine",
recipe={
{"","default:coal_lump",""},
{"","default:coal_lump",""},
{"default:mese","default:dirt","default:mese"}}
})


minetest.register_node("traps:trap_sand", {
	description = "Trap Sand",
    tile_images = {"default_sand.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    is_ground_content = false,
        walkable = false,
    climbable = false,
})

minetest.register_craft({
	output = 'traps:trap_sand',
	recipe = {
		{'', '', ''},
		{'', 'default:sand', ''},
		{'', 'default:stick', ''},
	}
})