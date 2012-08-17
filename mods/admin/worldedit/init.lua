minetest.register_privilege("worldedit", "Can use WorldEdit commands")

worldedit = {}

worldedit.set_pos = {}

worldedit.pos1 = {}
worldedit.pos2 = {}

dofile(minetest.get_modpath("worldedit") .. "/functions.lua")
dofile(minetest.get_modpath("worldedit") .. "/mark.lua")

--determines whether `nodename` is a valid node name, returning a boolean
worldedit.node_is_valid = function(temp_pos, nodename)
	local originalnode = minetest.env:get_node(temp_pos) --save the original node to restore later
	minetest.env:add_node(temp_pos, {name=nodename}) --attempt to add the node
	local value = minetest.env:get_node(temp_pos).name --obtain the name of the newly added node
	if value == nodename or value == "default:" .. nodename then --successfully added node
		minetest.env:add_node(temp_pos, originalnode) --restore the original node
		return true --node is valid
	end
	return false --node is not valid
end

minetest.register_chatcommand("/reset", {
	params = "",
	description = "Reset the region so that it is empty",
	privs = {worldedit=true},
	func = function(name, param)
		worldedit.pos1[name] = nil
		worldedit.pos2[name] = nil
		worldedit.mark_pos1(name)
		worldedit.mark_pos2(name)
		minetest.chat_send_player(name, "WorldEdit region reset")
	end,
})

minetest.register_chatcommand("/pos1", {
	params = "",
	description = "Set WorldEdit region position 1 to the player's location",
	privs = {worldedit=true},
	func = function(name, param)
		local pos = minetest.env:get_player_by_name(name):getpos()
		pos.x = math.floor(pos.x)
		pos.y = math.floor(pos.y)
		pos.z = math.floor(pos.z)
		worldedit.pos1[name] = pos
		worldedit.mark_pos1(name)
		minetest.chat_send_player(name, "WorldEdit position 1 set to (" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ")")
	end,
})

minetest.register_chatcommand("/pos2", {
	params = "",
	description = "Set WorldEdit region position 2 to the player's location",
	privs = {worldedit=true},
	func = function(name, param)
		local pos = minetest.env:get_player_by_name(name):getpos()
		pos.x = math.floor(pos.x)
		pos.y = math.floor(pos.y)
		pos.z = math.floor(pos.z)
		worldedit.pos2[name] = pos
		worldedit.mark_pos2(name)
		minetest.chat_send_player(name, "WorldEdit position 2 set to (" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ")")
	end,
})

minetest.register_chatcommand("/p", {
	params = "set/get",
	description = "Set WorldEdit region by punching two nodes, or display the current WorldEdit region",
	privs = {worldedit=true},
	func = function(name, param)
		if param == "set" then --set both WorldEdit positions
			worldedit.set_pos[name] = 1
			minetest.chat_send_player(name, "Select positions by punching two nodes")
		elseif param == "get" then --display current WorldEdit positions
			local pos = worldedit.pos1[name]
			minetest.chat_send_player(name, "WorldEdit position 1: (" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ")")
			local pos = worldedit.pos2[name]
			minetest.chat_send_player(name, "WorldEdit position 2: (" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ")")
		else
			minetest.chat_send_player(name, "Unknown subcommand: " .. param)
		end
	end,
})

minetest.register_on_punchnode(function(pos, node, puncher)
	local name = puncher:get_player_name()
	if name ~= "" and worldedit.set_pos[name] ~= nil then --currently setting position
		if worldedit.set_pos[name] == 1 then --setting position 1
			worldedit.set_pos[name] = 2 --set position 2 on the next invocation
			worldedit.pos1[name] = pos
			worldedit.mark_pos1(name)
			minetest.chat_send_player(name, "WorldEdit region position 1 set to (" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ")")
		else --setting position 2
			worldedit.set_pos[name] = nil --finished setting positions
			worldedit.pos2[name] = pos
			worldedit.mark_pos2(name)
			minetest.chat_send_player(name, "WorldEdit region position 2 set to (" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ")")
		end
	end
end)

minetest.register_chatcommand("/volume", {
	params = "",
	description = "Display the volume of the current WorldEdit region",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		local volume = worldedit.volume(pos1, pos2)
		minetest.chat_send_player(name, "Current WorldEdit region has a volume of " .. volume .. " nodes (" .. pos2.x - pos1.x .. "*" .. pos2.y - pos1.y .. "*" .. pos2.z - pos1.z .. ")")
	end,
})

minetest.register_chatcommand("/set", {
	params = "<node>",
	description = "Set the current WorldEdit region to <node>",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		if param == "" or not worldedit.node_is_valid(pos1, param) then
			minetest.chat_send_player(name, "Invalid node name: " .. param)
			return
		end

		local count = worldedit.set(pos1, pos2, param)
		minetest.chat_send_player(name, count .. " nodes set")
	end,
})

minetest.register_chatcommand("/replace", {
	params = "<search node> <replace node>",
	description = "Replace all instances of <search node> with <place node> in the current WorldEdit region",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		local found, _, searchnode, replacenode = param:find("([^%s]+)%s+([^%s]+)")
		if found == nil then
			minetest.chat_send_player(name, "Invalid usage: " .. param)
			return
		end
		if not worldedit.node_is_valid(pos1, searchnode) then
			minetest.chat_send_player(name, "Invalid search node name: " .. searchnode)
			return
		end
		if not worldedit.node_is_valid(pos1, replacenode) then
			minetest.chat_send_player(name, "Invalid replace node name: " .. replacenode)
			return
		end

		local count = worldedit.replace(pos1, pos2, searchnode, replacenode)
		minetest.chat_send_player(name, count .. " nodes replaced")
	end,
})

minetest.register_chatcommand("/copy", {
	params = "x/y/z <amount>",
	description = "Copy the current WorldEdit region along the x/y/z axis by <amount> nodes",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		local found, _, axis, amount = param:find("([xyz])%s+([+-]?%d+)")
		if found == nil then
			minetest.chat_send_player(name, "Invalid usage: " .. param)
			return
		end

		local count = worldedit.copy(pos1, pos2, axis, tonumber(amount))
		minetest.chat_send_player(name, count .. " nodes copied")
	end,
})

minetest.register_chatcommand("/move", {
	params = "x/y/z <amount>",
	description = "Move the current WorldEdit region along the x/y/z axis by <amount> nodes",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		local found, _, axis, amount = param:find("([xyz])%s+([+-]?%d+)")
		if found == nil then
			minetest.chat_send_player(name, "Invalid usage: " .. param)
			return
		end

		local count = worldedit.move(pos1, pos2, axis, tonumber(amount))
		minetest.chat_send_player(name, count .. " nodes moved")
	end,
})

minetest.register_chatcommand("/stack", {
	params = "x/y/z <count>",
	description = "Stack the current WorldEdit region along the x/y/z axis <count> times",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		local found, _, axis, count = param:find("([xyz])%s+([+-]?%d+)")
		if found == nil then
			minetest.chat_send_player(name, "Invalid usage: " .. param)
			return
		end

		local count = worldedit.stack(pos1, pos2, axis, tonumber(count))
		minetest.chat_send_player(name, count .. " nodes stacked")
	end,
})

minetest.register_chatcommand("/dig", {
	params = "",
	description = "Dig the current WorldEdit region",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		local count = worldedit.dig(pos1, pos2)
		minetest.chat_send_player(name, count .. " nodes dug")
	end,
})

minetest.register_chatcommand("/save", {
	params = "<file>",
	description = "Save the current WorldEdit region to \"(world folder)/schems/<file>.we\"",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1, pos2 = worldedit.pos1[name], worldedit.pos2[name]
		if pos1 == nil or pos2 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		if param == "" then
			minetest.chat_send_player(name, "Invalid usage: " .. param)
			return
		end

		local result, count = worldedit.serialize(pos1, pos2)

		local path = minetest.get_worldpath() .. "/schems"
		local filename = path .. "/" .. param .. ".we"
		os.execute("mkdir \"" .. path .. "\"") --create directory if it does not already exist
		local file, err = io.open(filename, "wb")
		if err ~= nil then
			minetest.chat_send_player(name, "Could not save file to \"" .. filename .. "\"")
			return
		end
		file:write(result)
		file:flush()
		file:close()

		minetest.chat_send_player(name, count .. " nodes saved")
	end,
})

minetest.register_chatcommand("/load", {
	params = "<file>",
	description = "Load nodes from \"(world folder)/schems/<file>.we\" with position 1 of the current WorldEdit region as the origin",
	privs = {worldedit=true},
	func = function(name, param)
		local pos1 = worldedit.pos1[name]
		if pos1 == nil then
			minetest.chat_send_player(name, "No WorldEdit region selected")
			return
		end

		if param == "" then
			minetest.chat_send_player(name, "Invalid usage: " .. param)
			return
		end

		local filename = minetest.get_worldpath() .. "/schems/" .. param .. ".we"
		local file, err = io.open(filename, "rb")
		if err ~= nil then
			minetest.chat_send_player(name, "Could not open file \"" .. filename .. "\"")
			return
		end
		local value = file:read("*a")
		file:close()

		local count
		if value:find("{") then --old WorldEdit format
			count = worldedit.deserialize_old(pos1, value)
		else --new WorldEdit format
			count = worldedit.deserialize(pos1, value)
		end

		minetest.chat_send_player(name, count .. " nodes loaded")
	end,
})