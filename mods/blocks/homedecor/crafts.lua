-- Crafting for homedecor mod (includes folding) by Vanessa Ezekowitz
-- 2012-06-12
--
-- Mostly my own code; overall template borrowed from game default
--
-- License: GPL
--

-- ====================================
-- Smelting recipes and resultant items

minetest.register_craftitem("homedecor:roof_tile_terracotta", {
        description = "Terracotta Roof Tile",
        inventory_image = "homedecor_roof_tile_terracotta.png",
})

minetest.register_craft({
        type = "cooking",
        output = "homedecor:roof_tile_terracotta 4",
        recipe = "default:dirt",
})

minetest.register_craft( {
        output = 'homedecor:shingles_terracotta',
        recipe = {
                { 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta'},
                { 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta'},
        },
})

minetest.register_craft( {
        output = 'homedecor:flower_pot_terracotta',
        recipe = {
                { 'homedecor:roof_tile_terracotta', 'default:dirt', 'homedecor:roof_tile_terracotta' },
                { 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta' },
        },
})

--

minetest.register_craftitem("homedecor:plastic_sheeting", {
        description = "Plastic sheet",
        inventory_image = "homedecor_plastic_sheeting.png",
})

minetest.register_craftitem("homedecor:plastic_base", {
        description = "Unprocessed Plastic base",
        wield_image = "homedecor_plastic_base.png",
        inventory_image = "homedecor_plastic_base_inv.png",
})

minetest.register_craft({
        type = "shapeless",
        output = 'homedecor:plastic_base 4',
        recipe = { "default:junglegrass",
		   "default:junglegrass"
	}
})

minetest.register_craft({
        type = "shapeless",
        output = 'homedecor:plastic_base 2',
        recipe = { "default:dry_shrub",
		   "default:dry_shrub"
	},
})

minetest.register_craft({
        type = "shapeless",
        output = 'homedecor:plastic_base 4',
        recipe = { "default:leaves",
        	   "default:leaves",
        	   "default:leaves",
        	   "default:leaves",
        	   "default:leaves",
		   "default:leaves"
	}
})

minetest.register_craft({
        type = "cooking",
        output = "homedecor:plastic_sheeting",
        recipe = "homedecor:plastic_base",
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:plastic_base',
        burntime = 30,
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:plastic_sheeting',
        burntime = 30,
})

minetest.register_craft( {
        output = 'homedecor:flower_pot_green',
        recipe = {
                { 'unifieddyes:dark_green', '', '' },
                { 'homedecor:plastic_sheeting', 'default:dirt', 'homedecor:plastic_sheeting' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
	replacements = { {'unifieddyes:dark_green', 'vessels:glass_bottle'}, },

})

minetest.register_craft( {
        output = 'homedecor:flower_pot_green',
        recipe = {
                { 'default:leaves', '', 'default:leaves' },
                { 'homedecor:plastic_sheeting', 'default:dirt', 'homedecor:plastic_sheeting' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
	replacements = { {'unifieddyes:dark_green', 'vessels:glass_bottle'}, },

})

minetest.register_craft( {
        output = 'homedecor:flower_pot_black',
        recipe = {
                { 'group:dye,basecolor_black', 'group:dye,basecolor_black', 'group:dye,basecolor_black' },
                { 'homedecor:plastic_sheeting', 'default:dirt', 'homedecor:plastic_sheeting' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
	replacements = {
			{'unifieddyes:black', 'vessels:glass_bottle'},
			{'unifieddyes:black', 'vessels:glass_bottle'},
			{'unifieddyes:black', 'vessels:glass_bottle'}
	}
})

minetest.register_craft( {
        output = 'homedecor:flower_pot_black',
        recipe = {
                { 'default:coal_lump', 'default:coal_lump', 'default:coal_lump' },
                { 'homedecor:plastic_sheeting', 'default:dirt', 'homedecor:plastic_sheeting' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
})
--

minetest.register_craft( {
        output = 'homedecor:projection_screen 3',
        recipe = {
		{ '', 'default:glass', '' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:projection_screen',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:ceiling_paint 10',
        recipe = {
                'unifieddyes:white_paint',
                'default:stone',
        },
	replacements = { {'unifieddyes:white_paint', 'bucket:bucket_empty'}, },
})

minetest.register_craft( {
        output = 'homedecor:ceiling_tile 10',
        recipe = {
                { '', 'unifieddyes:white_paint', '' },
                { 'default:steel_ingot', 'default:stone', 'default:steel_ingot' },

        },
	replacements = { {'unifieddyes:white_paint', 'bucket:bucket_empty'}, },
})


-- =======================================================
--  Items/recipes not requiring smelting of anything new

minetest.register_craft( {
        output = 'homedecor:glass_table_small_round 15',
        recipe = {
                { '', 'default:glass', '' },
                { 'default:glass', 'default:glass', 'default:glass' },
                { '', 'default:glass', '' },
        },
})

--

minetest.register_craft( {
        output = 'homedecor:glass_table_small_square 2',
        recipe = {
		{ 'homedecor:glass_table_small_round', 'homedecor:glass_table_small_round', 'homedecor:glass_table_small_round' },
        },
})

--

minetest.register_craft( {
        output = 'homedecor:glass_table_large 2',
        recipe = {
                { 'homedecor:glass_table_small_square', 'homedecor:glass_table_small_square' },
        },
})

--

minetest.register_craft( {
        output = 'homedecor:shingles_asphalt 6',
        recipe = {
                { 'default:dirt', 'group:dye,basecolor_black', 'default:dirt' },
                { 'default:sand', 'group:dye,basecolor_black', 'default:sand' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
	replacements = {
			{'unifieddyes:black', 'vessels:glass_bottle'},
			{'unifieddyes:black', 'vessels:glass_bottle'},
	}
})

minetest.register_craft( {
        output = 'homedecor:shingles_asphalt 6',
        recipe = {
                { 'default:dirt', 'default:coal_lump', 'default:dirt' },
                { 'default:sand', 'default:coal_lump', 'default:sand' },
                { 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
        },
})
--

minetest.register_craft( {
        output = 'homedecor:shingles_wood 12',
        recipe = {
                { 'default:stick', 'default:wood'},
                { 'default:wood', 'default:stick'},
        },
})

minetest.register_craft( {
        output = 'homedecor:shingles_wood 12',
        recipe = {
                { 'default:wood', 'default:stick'},
                { 'default:stick', 'default:wood'},
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shingles_wood',
        burntime = 30,
})

--

minetest.register_craft( {
        output = 'homedecor:skylight 9',
        recipe = { 
		{ 'default:glass', 'default:glass' },
		{ 'default:glass', 'default:glass' },
        },
})

--

minetest.register_craftitem("homedecor:utility_table_legs", {
        description = "Legs for Small Utility table",
        inventory_image = "homedecor_utility_table_legs.png",
})

minetest.register_craft( {
        output = 'homedecor:utility_table_legs',
        recipe = {
                { 'default:stick', 'default:stick', 'default:stick' },
                { 'default:stick', '', 'default:stick' },
                { 'default:stick', '', 'default:stick' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:utility_table_legs',
        burntime = 30,
})

--

minetest.register_craft( {
        output = 'homedecor:wood_table_small_round 15',
        recipe = {
                { '', 'default:wood', '' },
                { 'default:wood', 'default:wood', 'default:wood' },
                { '', 'default:wood', '' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:wood_table_small_round',
        burntime = 30,
})

minetest.register_craft( {
        output = 'homedecor:wood_table_small_square 2',
        recipe = { 
		{ 'homedecor:wood_table_small_round', 'homedecor:wood_table_small_round', 'homedecor:wood_table_small_round' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:wood_table_small_square',
        burntime = 30,
})

--

minetest.register_craft( {
        output = 'homedecor:wood_table_large 2',
        recipe = {
                { 'homedecor:wood_table_small_square', 'homedecor:wood_table_small_square' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:wood_table_large',
        burntime = 30,
})

-- Various colors of shutters

minetest.register_craft( {
        output = 'homedecor:shutter_oak 2',
        recipe = {
                { 'default:stick', 'default:stick' },
                { 'default:stick', 'default:stick' },
                { 'default:stick', 'default:stick' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shutter_oak',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_black 4',
        recipe = {
                'group:dye,basecolor_black',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak'
        },
	replacements = { {'unifieddyes:black', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_black 4',
        recipe = {
                'default:coal_lump',
                'default:coal_lump',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak'
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shutter_black',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_dark_grey 4',
        recipe = {
                'unifieddyes:darkgrey_paint',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak'
        },
	replacements = { {'unifieddyes:darkgrey_paint', 'bucket:bucket_empty'}, },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shutter_dark_grey',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_grey 4',
        recipe = {
		'group:dye,basecolor_grey',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak'
        },
	replacements = { {'unifieddyes:grey_paint', 'bucket:bucket_empty'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_grey 4',
        recipe = {
                'default:coal_lump',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak'
        },
})
minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shutter_grey',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_white 4',
        recipe = {
                'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
                'unifieddyes:white_paint',
        },
	replacements = { {'unifieddyes:white_paint', 'bucket:bucket_empty'}, },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shutter_white',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_mahogany 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'unifieddyes:dark_orange',
	},
	replacements = { {'unifieddyes:dark_orange', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_mahogany 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'default:coal_lump',
		'default:dirt',
	},
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:shutter_mahogany',
       	burntime = 30,
})
minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_red 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'group:dye,basecolor_red',
	},
	replacements = { {'unifieddyes:red', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_red 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'default:apple',
	},
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:shutter_red',
       	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_yellow 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'group:dye,basecolor_yellow',
	},
	replacements = { {'unifieddyes:yellow', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_yellow 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'default:mese',
	},
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:shutter_yellow',
       	burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_forest_green 4',
        recipe = {
                'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
                'unifieddyes:dark_green',
        },
	replacements = { {'unifieddyes:dark_green', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_forest_green 4',
        recipe = {
                'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
                'default:leaves',
                'default:coal_lump',
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:shutter_forest_green',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_light_blue 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'unifieddyes:light_blue',
	},
	replacements = { {'unifieddyes:light_blue', 'vessels:glass_bottle'}, },
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:shutter_light_blue',
       	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:shutter_purple 4',
       	recipe = {
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'homedecor:shutter_oak',
		'unifieddyes:violet',
	},
	replacements = { {'unifieddyes:violet', 'vessels:glass_bottle'}, },
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:shutter_purple',
       	burntime = 30,
})

-- Table legs and stuff

minetest.register_craft( {
        output = 'homedecor:table_legs_wrought_iron 2',
        recipe = {
                { '', 'default:iron_lump', '' },
                { '', 'default:iron_lump', '' },
                { 'default:iron_lump', 'default:iron_lump', 'default:iron_lump' },
        },
})

-- 

minetest.register_craft( {
        output = 'homedecor:pole_wrought_iron 2',
        recipe = {
                { 'default:iron_lump', },
                { 'default:iron_lump', },
                { 'default:iron_lump', },
        },
})

minetest.register_craft( {
        output = 'homedecor:fence_wrought_iron 4',
        recipe = {
                { 'default:iron_lump','default:iron_lump','default:iron_lump' },
                { 'default:iron_lump','default:iron_lump','default:iron_lump' },
        },
})

--

minetest.register_craftitem("homedecor:drawer_small", {
        description = "Small Wooden Drawer",
        inventory_image = "homedecor_drawer_small.png",
})


minetest.register_craft( {
        output = 'homedecor:drawer_small',
        recipe = {
                { 'default:wood', 'default:steel_ingot', 'default:wood' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:drawer_small',
        burntime = 30,
})

--

minetest.register_craft( {
        output = 'homedecor:nightstand_oak_one_drawer',
        recipe = {
                { 'homedecor:drawer_small' },
                { 'default:wood' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:nightstand_oak_one_drawer',
        burntime = 30,
})

minetest.register_craft( {
        output = 'homedecor:nightstand_oak_two_drawers',
        recipe = {
                { 'homedecor:drawer_small' },
                { 'homedecor:drawer_small' },
                { 'default:wood' },
        },
})

minetest.register_craft( {
        output = 'homedecor:nightstand_oak_two_drawers',
        recipe = {
                { 'homedecor:nightstand_oak_one_drawer' },
                { 'homedecor:drawer_small' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:nightstand_oak_two_drawers',
        burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:nightstand_mahogany_one_drawer',
        recipe = {
                'homedecor:nightstand_oak_one_drawer',
                'unifieddyes:dark_orange',
        },
	replacements = { {'unifieddyes:dark_orange', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:nightstand_mahogany_one_drawer',
        recipe = {
                'homedecor:nightstand_oak_one_drawer',
                'default:dirt',
		'default:coal_lump',
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:nightstand_mahogany_one_drawer',
        burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:nightstand_mahogany_two_drawers',
        recipe = {
                'homedecor:nightstand_oak_two_drawers',
                'unifieddyes:dark_orange',
        },
	replacements = { {'unifieddyes:dark_orange', 'vessels:glass_bottle'}, },
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:nightstand_mahogany_two_drawers',
        recipe = {
                'homedecor:nightstand_oak_two_drawers',
                'default:dirt',
		'default:coal_lump',
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:nightstand_mahogany_two_drawers',
        burntime = 30,
})


--

minetest.register_craftitem("homedecor:drawer_large", {
        description = "Large Wooden Drawer",
        inventory_image = "homedecor_drawer_large.png",
})


minetest.register_craft( {
        output = 'homedecor:drawer_large',
        recipe = {
                { 'default:wood', 'default:steel_ingot', 'default:wood' },
                { 'default:wood', 'default:wood', 'default:wood' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:drawer_large',
        burntime = 30,
})

--

minetest.register_craftitem("homedecor:dresser_oak", {
        description = "Three-Drawer Oak Dresser",
        inventory_image = "homedecor_dresser_oak_inv.png",
})


minetest.register_craft( {
        output = 'homedecor:dresser_oak',
        recipe = {
                { 'default:wood', 'homedecor:drawer_large', 'default:wood' },
                { 'default:wood', 'homedecor:drawer_large', 'default:wood' },
                { 'default:wood', 'homedecor:drawer_large', 'default:wood' },
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:dresser_oak',
        burntime = 30,
})

--

minetest.register_craftitem("homedecor:dresser_mahogany", {
        description = "Three-Drawer Mahogany Dresser",
        inventory_image = "homedecor_dresser_mahogany_inv.png",
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:dresser_mahogany',
        recipe = {
		'homedecor:dresser_oak',
		'unifieddyes:dark_orange',
		'unifieddyes:dark_orange',
        },
	replacements = {
			{'unifieddyes:dark_orange', 'vessels:glass_bottle'},
			{'unifieddyes:dark_orange', 'vessels:glass_bottle'}
	},
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:dresser_mahogany',
        recipe = {
		'homedecor:dresser_oak',
                'default:dirt',
                'default:dirt',
		'default:coal_lump',
		'default:coal_lump',
        },
})

minetest.register_craft({
        type = 'fuel',
        recipe = 'homedecor:dresser_oak',
        burntime = 30,
})

-- ==========================================================
-- Recipes that require materials from Calinou's Moreores mod

minetest.register_craftitem("homedecor:brass_ingot", {
        description = "Brass Ingot",
        inventory_image = "homedecor_brass_ingot.png",
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:brass_ingot 2',
	recipe = {
		'moreores:silver_ingot',
		'moreores:copper_ingot',
	},
})


minetest.register_craft( {
        output = 'homedecor:table_legs_brass 2',
	recipe = {
		{ '', 'homedecor:brass_ingot', '' },
		{ '', 'homedecor:brass_ingot', '' },
		{ 'homedecor:brass_ingot', 'homedecor:brass_ingot', 'homedecor:brass_ingot' }
	},
})

minetest.register_craft( {
        output = 'homedecor:pole_brass 2',
	recipe = {
		{ '', 'homedecor:brass_ingot', '' },
		{ '', 'homedecor:brass_ingot', '' },
		{ '', 'homedecor:brass_ingot', '' }
	},
})

minetest.register_craft( {
        output = 'homedecor:fence_brass 4',
	recipe = {
		{ 'homedecor:brass_ingot', 'homedecor:brass_ingot', 'homedecor:brass_ingot' },
		{ 'homedecor:brass_ingot', 'homedecor:brass_ingot', 'homedecor:brass_ingot' },
	},
})

-- ========================================================
-- Recipes that require materials from Jeija's Mesecons mod

if ( minetest.get_modpath("mesecons") ) == nil then

	minetest.register_craftitem(":mesecons_materials:silicon", {
		description = "Silicon lump",
		inventory_image = "homedecor_silicon.png",
	})

	minetest.register_craft( {
		output = "mesecons_materials:silicon 4",
		recipe = {
			{ "default:sand", "default:sand" },
			{ "default:sand", "default:steel_ingot" },
		},
	})

end

minetest.register_craft( {
	output = "homedecor:ic 4",
	recipe = {
		{ "mesecons_materials:silicon", "mesecons_materials:silicon" },
		{ "mesecons_materials:silicon", "default:steel_ingot" },
	},
})

minetest.register_craftitem("homedecor:ic", {
	description = "Simple Integrated Circuit",
	inventory_image = "homedecor_ic.png",
})

minetest.register_craft( {
	output = 'homedecor:television',
	recipe = {
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
		{ 'homedecor:plastic_sheeting', 'default:glass', 'homedecor:plastic_sheeting' },
		{ 'homedecor:ic', 'homedecor:ic', 'homedecor:ic' },
	},
})

minetest.register_craft( {
	output = 'homedecor:stereo',
	recipe = {
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
		{ 'homedecor:plastic_sheeting', 'homedecor:ic', 'homedecor:plastic_sheeting' },
		{ 'default:steel_ingot', 'homedecor:ic', 'default:steel_ingot' },
	},
})

-- ===========================================================
-- Recipes that require materials from wool (cotton alternate)

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:rug_small 8',
       	recipe = {
       		'wool:red',
		'wool:yellow',
		'wool:blue',
		'wool:black'
	},
})

-- cotton version:

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:rug_small 8',
       	recipe = {
       		'cotton:red',
		'cotton:yellow',
		'cotton:blue',
		'cotton:black'
	},
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:rug_small',
       	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
        output = 'homedecor:rug_large 2',
       	recipe = {
		'homedecor:rug_small',
		'homedecor:rug_small',
	},
})

minetest.register_craft({
       	type = 'fuel',
       	recipe = 'homedecor:rug_large',
       	burntime = 30,
})

-- =====================================
-- Speakers require copper from moreores

minetest.register_craft( {
        output = 'homedecor:speaker',
      		recipe = {
		{ 'default:wood', 'wool:black', 'default:wood' },
		{ 'default:wood', 'moreores:copper_ingot', 'default:wood' },
		{ 'default:wood', 'wool:black', 'default:wood' },
	},
})

minetest.register_craft( {
        output = 'homedecor:speaker_small',
      		recipe = {
		{ 'default:wood', 'wool:black', 'default:wood' },
		{ 'default:wood', 'moreores:copper_ingot', 'default:wood' },
	},
})

-- cotton version

minetest.register_craft( {
        output = 'homedecor:speaker',
      		recipe = {
		{ 'default:wood', 'cotton:black', 'default:wood' },
		{ 'default:wood', 'moreores:copper_ingot', 'default:wood' },
		{ 'default:wood', 'cotton:black', 'default:wood' },
	},
})

minetest.register_craft( {
        output = 'homedecor:speaker_small',
      		recipe = {
		{ 'default:wood', 'cotton:black', 'default:wood' },
		{ 'default:wood', 'moreores:copper_ingot', 'default:wood' },
	},
})



