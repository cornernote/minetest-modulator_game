minetest.register_craftitem( "technic:coal_dust", {
	description = "Coal Dust",
	inventory_image = "technic_coal_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})

minetest.register_craftitem( "technic:iron_dust", {
	description = "Iron Dust",
	inventory_image = "technic_iron_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})

minetest.register_craft({
    type = "cooking",
    output = "default:steel_ingot",
    recipe = "technic:iron_dust",
}) 

minetest.register_craftitem( "technic:copper_dust", {
	description = "Copper Dust",
	inventory_image = "technic_copper_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})
minetest.register_craft({
    type = "cooking",
    output = "moreores:copper_ingot",
    recipe = "technic:copper_dust",
}) 

minetest.register_craftitem( "technic:tin_dust", {
	description = "Tin Dust",
	inventory_image = "technic_tin_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})
minetest.register_craft({
    type = "cooking",
    output = "moreores:tin_ingot",
    recipe = "technic:tin_dust",
}) 

minetest.register_craftitem( "technic:silver_dust", {
	description = "Silver Dust",
	inventory_image = "technic_silver_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})
minetest.register_craft({
    type = "cooking",
    output = "moreores:silver_ingot",
    recipe = "technic:silver_dust",
}) 

minetest.register_craftitem( "technic:gold_dust", {
	description = "Gold Dust",
	inventory_image = "technic_gold_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})
minetest.register_craft({
    type = "cooking",
    output = "moreores:gold_ingot",
    recipe = "technic:gold_dust",
}) 

minetest.register_craftitem( "technic:mithril_dust", {
	description = "Mithril Dust",
	inventory_image = "technic_mithril_dust.png",
	on_place_on_ground = minetest.craftitem_place_item,
	})
minetest.register_craft({
    type = "cooking",
    output = "moreores:mithril_ingot",
    recipe = "technic:mithril_dust",
}) 

minetest.register_alias("grinder", "technic:grinder")
minetest.register_craft({
	output = 'technic:grinder',
	recipe = {
		{'default:desert_stone', 'default:desert_stone', 'default:desert_stone'},
		{'default:desert_stone', 'technic:diamond', 'default:desert_stone'},
		{'default:stone', 'moreores:copper_ingot', 'default:stone'},
	}
})

minetest.register_craftitem("technic:grinder", {
	description = "Grinder",
	stack_max = 99,
}) 

grinder_formspec =
	"invsize[8,9;]"..
	"image[1,1;1,2;technic_power_meter_bg.png]"..
	"label[0,0;Grinder]"..
	"label[1,3;Power level]"..
	"list[current_name;src;3,1;1,1;]"..
	"list[current_name;dst;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"
	

minetest.register_node("technic:grinder", {
	description = "Grinder",
	tiles = {"technic_grinder_top.png", "technic_machine_bottom.png", "technic_grinder_side.png",
		"technic_grinder_side.png", "technic_grinder_side.png", "technic_grinder_front.png"},
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	sounds = default.node_sound_wood_defaults(),
	technic_power_machine=1,
	internal_EU_buffer=0;
	internal_EU_buffer_size=5000;
	grind_time=0;
	grinded = nil;
	src_time = 0;
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("infotext", "Grinder")
		meta:set_float("technic_power_machine", 1)
		meta:set_float("internal_EU_buffer", 0)
		meta:set_float("internal_EU_buffer_size", 5000)
		meta:set_string("formspec", grinder_formspec)
		meta:set_float("grind_time", 0)
		
		local inv = meta:get_inventory()
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
		
		end,	
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("src") then
			return false
		end
		if not inv:is_empty("dst") then
			return false
		end

		return true
		end,

})

minetest.register_abm({
	nodenames = {"technic:grinder"},
	interval = 1,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)

	local meta = minetest.env:get_meta(pos)
	local charge= meta:get_float("internal_EU_buffer")
	local max_charge= meta:get_float("internal_EU_buffer_size")
	local grind_cost=200

	local load = math.floor((charge/max_charge)*100)
	meta:set_string("formspec",
				"invsize[8,9;]"..
				"image[1,1;1,2;technic_power_meter_bg.png^[lowpart:"..
						(load)..":technic_power_meter_fg.png]"..
				"label[0,0;Grinder]"..
				"label[1,3;Power level]"..
				"list[current_name;src;3,1;1,1;]"..
				"list[current_name;dst;5,1;2,2;]"..
				"list[current_player;main;0,5;8,4;]"
				)
				
		

		local inv = meta:get_inventory()
		
--		local grinder_on = meta:get_float("grinder_on")
		
		
		local srclist = inv:get_list("src")
		if inv:is_empty("src") then meta:set_float("grinder_on",0) end 
	
		
		if (meta:get_float("grinder_on") == 1) then
			if charge>=grind_cost then
			charge=charge-grind_cost;
			meta:set_float("internal_EU_buffer",charge)
			meta:set_float("src_time", meta:get_float("src_time") + 1)
			if meta:get_float("src_time") >= meta:get_float("grind_time") then
				-- check if there's room for output in "dst" list
				grinded = get_grinded_item (inv:get_stack("src", 1))		
				if inv:room_for_item("dst",grinded) then
					-- Put result in "dst" list
					inv:add_item("dst", grinded)
					-- take stuff from "src" list
					srcstack = inv:get_stack("src", 1)
					srcstack:take_item()
					inv:set_stack("src", 1, srcstack)
					if inv:is_empty("src") then meta:set_float("grinder_on",0) end 



				else
					print("Grinder inventory full!")
				end
				meta:set_float("src_time", 0)
			end
			end		
		end
		
		if (meta:get_float("grinder_on")==0) then
		local grinded=nil 
		if not inv:is_empty("src") then
		 grinded = get_grinded_item (inv:get_stack("src", 1))
		 if grinded then meta:set_float("grinder_on",1) end
		 grind_time=4
		 meta:set_float("grind_time",grind_time)
		 meta:set_float("src_time", 0)
		end
		end
		
	
	end
}) 

function get_grinded_item (items)
new_item =nil
src_item=items:to_table()
item_name=src_item["name"]
		
if item_name=="default:stone" then new_item=ItemStack("default:sand") return new_item end
if item_name=="default:cobble" then new_item=ItemStack("default:gravel") return new_item end
if item_name=="default:gravel" then new_item=ItemStack("default:dirt") return new_item end
if item_name=="default:desert_stone" then new_item=ItemStack("default:desert_sand") return new_item end
if item_name=="default:iron_lump" then new_item=ItemStack("technic:iron_dust 2") return new_item end
if item_name=="default:coal_lump" then new_item=ItemStack("technic:coal_dust 2") return new_item end
if item_name=="moreores:copper_lump" then new_item=ItemStack("technic:copper_dust 2") return new_item end
if item_name=="moreores:tin_lump" then new_item=ItemStack("technic:tin_dust 2") return new_item end
if item_name=="moreores:silver_lump" then new_item=ItemStack("technic:silver_dust 2") return new_item end
if item_name=="moreores:gold_lump" then new_item=ItemStack("technic:gold_dust 2") return new_item end
if item_name=="moreores:mithril_lump" then new_item=ItemStack("technic:mithril_dust 2") return new_item end

return nil
end