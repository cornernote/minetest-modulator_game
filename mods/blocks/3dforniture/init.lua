--[[
--Mod:			3D FORNITURE
--V: 1.0
--Autor:		Tonyka
--Agradecimientos a:	cosarara97, InfinityProject
------------------------
-- Copyright  GNU GPL --
------------------------
--]]

dofile(minetest.get_modpath("3dforniture").."/crafting.lua")
dofile(minetest.get_modpath("3dforniture").."/nodes.lua")

--alias
minetest.register_alias('table', '3dforniture:table')
minetest.register_alias('chair', '3dforniture:chair')
minetest.register_alias('bars', '3dforniture:bars')
minetest.register_alias('binding_bars', '3dforniture:L_binding_bars')
minetest.register_alias('chains', '3dforniture:chains')
minetest.register_alias('torch_wall', '3dforniture:torch_wall')
minetest.register_alias('toilet', '3dforniture:toilet')
minetest.register_alias('sink', '3dforniture:sink')
minetest.register_alias('taps', '3dforniture:taps')
minetest.register_alias('shower_tray', '3dforniture:shower_tray')
minetest.register_alias('shower_head', '3dforniture:shower_head')
--[[
minetest.register_abm(
	{nodenames = {"3dforniture:toilet"},
	interval = 0.02 ,
	chance = 1,
	action = function(pos)
		--pos.y=pos.y
		minetest.env:add_node(pos, {name="3dforniture:toilet_open"})
		--minetest.env:remove_node(pos, {name="3dforniture:toilet_open"})
	end,
})

minetest.register_abm(
	{nodenames = {"3dforniture:toilet_open"},
	interval = 0.02,
	chance = 1,
	action = function(pos)
		--pos.y=pos.y
		minetest.env:add_node(pos, {name="3dforniture:toilet"})
	end,
})
]]
--[[
minetest.register_abm(
	{nodenames = {"default:tree"},
	interval = 1 ,
	chance = 1,
	action = function(pos)
		--pos.y=pos.y
		minetest.env:add_node(pos, {name="default:tree"})
		--minetest.env:remove_node(pos, {name="3dforniture:toilet_open"})
	end,
})
]]

--[[
local on_toilet_puncher = function (pos, node, puncher)
	if node.name == '3dforniture:toilet' then
		minetest.env:add_node(pos, {name="3dforniture:toilet_open"})
		nodeupdate(pos)
	elseif node.name == '3dforniture:toilet_open' then
		minetest.env:add_node(pos, {name="3dforniture:toilet"})
		nodeupdate(pos)
    end
end

minetest.register_on_punchnode(on_toilet_puncher)
]]--
----------------------------------------------------------------
