--[[

SkyBlock Functions
by cornernote (cornernote@gmail.com)

]]--



--
-- LOCAL OBJECTS
--


-- string containing a file to store the spawn data
local skyblock_file = minetest.get_worldpath()..'/skyblock'


-- load the spawn data from disk
local spawnpos = {}
local load_spawn = function()
    local input = io.open(skyblock_file..".spawn", "r")
    if input then
        while true do
            local x = input:read("*n")
            if x == nil then
                break
            end
            local y = input:read("*n")
            local z = input:read("*n")
            local name = input:read("*l")
            spawnpos[name:sub(2)] = {x = x, y = y, z = z}
        end
        io.close(input)
    else
        spawnpos = {}
    end
end
load_spawn() -- run it now


-- spiral matrix
-- http://rosettacode.org/wiki/Spiral_matrix#Lua
av, sn = math.abs, function(s) return s~=0 and s/av(s) or 0 end
local function sindex(y, x) -- returns the value at (x, y) in a spiral that starts at 1 and goes outwards
  if y == -x and y >= x then return (2*y+1)^2 end
  local l = math.max(av(y), av(x))
  return (2*l-1)^2+4*l+2*l*sn(x+y)+sn(y^2-x^2)*(l-(av(y)==l and sn(y)*x or sn(x)*y)) -- OH GOD WHAT
end
local function spiralt(side)
  local ret, id, start, stop = {}, 0, math.floor((-side+1)/2), math.floor((side-1)/2)
  for i = 1, side do
    for j = 1, side do
	  local id = side^2 - sindex(stop - i + 1,start + j - 1)
      ret[id] = {x=i,z=j}
    end
  end
  return ret
end


-- reverse ipairs
function ripairs(t)
  local function ripairs_it(t,i)
    i=i-1
    local v=t[i]
    if v==nil then return v end
    return i,v
  end
  return ripairs_it, t, #t+1
end
 

-- load the start positions from disk
local start_positions = {}
local load_start_positions = function()
    local input = io.open(skyblock_file..".start_positions", "r")

	-- create start_positions file if needed
    if not input then
		local output = io.open(skyblock_file..".start_positions", "w")
		local pos
		for i,v in ripairs(spiralt(skyblock.WORLD_WIDTH)) do -- get positions using spiral
			pos = {x=v.x*skyblock.START_GAP, y=0, z=v.z*skyblock.START_GAP}
			output:write(pos.x.." "..pos.y.." "..pos.z.."\n")
		end
		io.close(output)
		input = io.open(skyblock_file..".start_positions", "r")
	end
	
	-- read start positions
	while true do
		local x = input:read("*n")
		if x == nil then
			break
		end
		local y = input:read("*n")
		local z = input:read("*n")
		table.insert(start_positions,{x = x, y = y, z = z})
	end
	io.close(input)
	
end
load_start_positions() -- run it now


-- load the last start position from disk
local last_start_id = 0
local load_last_start_id = function()
	local input = io.open(skyblock_file..".last_start_id", "r")
	
	-- create last_start_id file if needed
    if not input then
		local output = io.open(skyblock_file..".last_start_id", "w")
		output:write(last_start_id)
		io.close(output)
		input = io.open(skyblock_file..".last_start_id", "r")
	end
	
	-- read last start id
	last_start_id = input:read("*n")
	if last_start_id == nil then
		last_start_id = 0
	end
	io.close(input)
	
end
load_last_start_id() -- run it now



--
-- PUBLIC OBJECTS
--


-- get players spawn position
skyblock.get_spawn = function(player_name)
	local spawn = spawnpos[player_name]
	return {x=spawn.x,y=spawn.y+4,z=spawn.z}
end


-- set players spawn position
skyblock.set_spawn = function(player_name, pos)
	spawnpos[player_name] = pos
	-- save the spawn data from the table to the file
	local output = io.open(skyblock_file..".spawn", "w")
	for i, v in pairs(spawnpos) do
		output:write(v.x.." "..v.y.." "..v.z.." "..i.."\n")
	end
	io.close(output)
end


-- get next spawn position using spiral matrix
skyblock.get_next_spawn = function()
	last_start_id = last_start_id+1
	local output = io.open(skyblock_file..".last_start_id", "w")
	output:write(last_start_id)
	io.close(output)
	return start_positions[last_start_id]
end


-- handle new player spawn setup
skyblock.spawn_new_player = function(player)
	-- find the player spawn point
	local spawn = spawnpos[player:get_player_name()]
	if spawn == nil then
		spawn = skyblock.get_next_spawn()
		skyblock.set_spawn(player:get_player_name(),spawn)
	end
	local node = minetest.env:get_node(spawn)
	
	-- already has a spawn, teleport and return true 
	if node.name == "skyblock:spawn" then
		player:setpos(skyblock.get_spawn(player:get_player_name()))
		return true
	end

	-- add the start block and teleport the player
	minetest.env:add_node(spawn, {name="skyblock:spawn"})
	player:setpos(skyblock.get_spawn(player:get_player_name()))
end


-- handle player respawn
skyblock.respawn_player = function(player)
	
	-- empty inventory
	local inv = player:get_inventory()
	if not inv:is_empty("main") then
		for i=1,32 do
			inv:set_stack("main", i, nil)
		end
	end
	if not inv:is_empty("craft") then
		for i=1,9 do
			inv:set_stack("craft", i, nil)
		end
	end
	
	-- kill player
	player:set_hp(0)

end


-- make a tree
skyblock.generate_tree = function(pos)
	-- check if we have space to make a tree
	for dy=1,4 do
		pos.y = pos.y+dy
		if minetest.env:get_node(pos).name ~= "air" then
			return
		end
		pos.y = pos.y-dy
	end
	
	local node = {name = ""}

	-- check if we should make an apple tree
	local is_apple_tree, is_jungle_tree = false, false
	if math.random(0, 8) == 0 then
		is_apple_tree = true
	else
		if math.random(0, 8) == 0 then
			is_jungle_tree = true
		end
	end
	
	-- add the tree
	if is_jungle_tree then
		node.name = "default:jungletree"
	else
		node.name = "default:tree"
	end
	for dy=0,4 do
		pos.y = pos.y+dy
		minetest.env:set_node(pos, node)
		pos.y = pos.y-dy
	end

	-- add leaves all around the tree
	pos.y = pos.y+3
	for dx=-2,2 do
		for dz=-2,2 do
			for dy=0,3 do
				pos.x = pos.x+dx
				pos.y = pos.y+dy
				pos.z = pos.z+dz

				-- check if we should add leaves or an apple
				if is_apple_tree and math.random(0, 6) == 0 then
					node.name = "default:apple"
				else
					node.name = "default:leaves"
				end
				
				-- add the leaves
				if dx == 0 and dz == 0 and dy==3 then
					if minetest.env:get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.env:set_node(pos, node)
					end
				elseif dx == 0 and dz == 0 and dy==4 then
					if minetest.env:get_node(pos).name == "air" and math.random(1, 5) <= 4 then
						minetest.env:set_node(pos, node)
					end
				elseif math.abs(dx) ~= 2 and math.abs(dz) ~= 2 then
					if minetest.env:get_node(pos).name == "air" then
						minetest.env:set_node(pos, node)
					end
				else
					if math.abs(dx) ~= 2 or math.abs(dz) ~= 2 then
						if minetest.env:get_node(pos).name == "air" and math.random(1, 5) <= 4 then
							minetest.env:set_node(pos, node)
						end
					end
				end

				pos.x = pos.x-dx
				pos.y = pos.y-dy
				pos.z = pos.z-dz
			end
		end
	end
end
