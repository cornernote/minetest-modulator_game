minetest.register_craft( {
	output = '3dforniture:table',
	recipe = {
		{ 'default:wood','default:wood', 'default:wood' },
		{ 'default:stick', '', 'default:stick' },
	},
})

minetest.register_craft( {
	output = '3dforniture:chair 2',
	recipe = {
		{ 'default:stick',''},
		{ 'default:wood','default:wood' },
		{ 'default:stick','default:stick' },
	},
})

minetest.register_craft( {
	output = '3dforniture:bars 10',
	recipe = {
		{ 'default:steel_ingot','default:steel_ingot','default:steel_ingot' },
		{ 'default:steel_ingot','default:steel_ingot','default:steel_ingot' },
	},
})

minetest.register_craft( {
	output = '3dforniture:L_binding_bars 4',
	recipe = {
		{ '3dforniture:bars','' },
		{ '3dforniture:bars','3dforniture:bars' },
	},
})

minetest.register_craft( {
	output = '3dforniture:chains 4',
	recipe = {
		{'','default:steel_ingot',''},
		{ 'default:steel_ingot','', 'default:steel_ingot' },
		{ '', 'default:steel_ingot', '' },
	},
})

minetest.register_craft( {
	output = '3dforniture:torch_wall 10',
	recipe = {
		{ 'default:coal_lump' },
		{ 'default:steel_ingot' },
	},
})

minetest.register_craft( {
	output = '3dforniture:toilet',
	recipe = {
		{'','','bucket:bucket_water'},
		{ 'default:cobble','default:cobble', 'default:cobble' },
		{ '', 'bucket:bucket_empty', '' },
	},
})


minetest.register_craft( {
	output = '3dforniture:sink',
	recipe = {
		{ 'default:cobble','bucket:bucket_empty', 'default:cobble' },
	},
})

minetest.register_craft( {
	output = '3dforniture:taps',
	recipe = {
		{ 'default:steel_ingot','bucket:bucket_water', 'default:steel_ingot' },
	},
})

minetest.register_craft( {
	output = '3dforniture:shower_tray',
	recipe = {
		{ 'default:cobble','bucket:bucket_water', 'default:cobble' },
	},
})

minetest.register_craft( {
	output = '3dforniture:shower_head',
	recipe = {
		{ 'default:steel_ingot','bucket:bucket_water' },
	},
})

--fuel

minetest.register_craft({
	type = 'fuel',
	recipe = '3dforniture:table',
	burntime = 30,
})

minetest.register_craft({
	type = 'fuel',
	recipe = '3dforniture:chair',
	burntime = 15,
})



