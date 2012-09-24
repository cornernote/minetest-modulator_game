local madblocks_modpath = minetest.get_modpath("madblocks")
math.randomseed(os.time())

BRICKLIKE = function(nodeid, nodename)
	minetest.register_node("madblocks:"..nodeid, {
		description = nodename,
		tile_images = {"madblocks_"..nodeid..'.png'},
		inventory_image = minetest.inventorycube("madblocks_"..nodeid..'.png'),
		is_ground_content = true,
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	})
end
--		*****************************
--		NODES
--		*****************************

BRICKLIKE('mossystonebrick','Mossy Stone Brick')
BRICKLIKE('culturedstone','Cultured Stone')
BRICKLIKE('marblestonebrick','Marble Stone Brick')
BRICKLIKE('shinystonebrick','Sand-Blasted Stone Brick')
BRICKLIKE('blackstonebrick','Black Stonebrick')
BRICKLIKE('roundstonebrick','Round Stonebrick')
BRICKLIKE('slimstonebrick','Slim Stonebrick')
BRICKLIKE('greystonebrick','Grey Stonebrick')
BRICKLIKE('medistonebrick','Mediterranean Stonebrick')
BRICKLIKE('whitestonebrick','White Stonebrick')
BRICKLIKE('countrystonebrick','Country Stonebrick')
BRICKLIKE('brownmedistonebrick','Mediterranean Stonebrick (Brown Tones)')
