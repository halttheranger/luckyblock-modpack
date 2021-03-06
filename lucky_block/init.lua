lucky_block = {}
lucky_schems = {}

lucky_block.seed = PseudoRandom(os.time())

-- default blocks
local lucky_list = {
	{"fal", {"default:wood", "default:gravel", "default:sand", "default:desert_sand", "default:stone", "default:dirt", "default:goldblock", "lucky_drops:ultimate_diamond_block"}, 0},
	{"lig"},
	{"nod", "lucky_block:super_lucky_block", 0},
	{"exp"},
}

-- ability to add new blocks to list
function lucky_block:add_blocks(list)
	for s = 1, #list do
		table.insert(lucky_list, list[s])
	end
end

-- call to purge the block list
function lucky_block:purge_block_list()
	lucky_list = {
		{"nod", "lucky_block:super_lucky_block", 0}
	}
end

-- add schematics to global list
function lucky_block:add_schematics(list)
	for s = 1, #list do
		table.insert(lucky_schems, list[s])
	end
end

-- import schematics and default blocks
dofile(minetest.get_modpath("lucky_block").."/schems.lua")
dofile(minetest.get_modpath("lucky_block").."/blocks.lua")

-- for random colour selection
local all_colours = {
	"grey", "black", "red", "yellow", "green", "cyan", "blue", "magenta",
	"orange", "violet", "brown", "pink", "dark_grey", "dark_green", "white"
}

-- default items in chests
local chest_stuff = {
	{name = "default:apple", max = 3},
	{name = "default:steel_ingot", max = 2},
	{name = "default:gold_ingot", max = 2},
	{name = "default:diamond", max = 1},
	{name = "default:pick_steel", max = 1},
	{name = "lucky_weapons:dagger_diamond", max = 1},
	{name = "lucky_drops:coin_gold", max = 3},
	{name = "lucky_drops:coin_green", max = 3},
	{name = "lucky_drops:coin_stone", max = 3},
	{name = "lucky_drops:coin_fire", max = 3},
	{name = "lucky_drops:coin_black", max = 3},
	{name = "lucky_drops:coin_blue", max = 3},

}

-- call to purge the chest items list
function lucky_block:purge_chest_items()
	chest_stuff = {}
end

-- ability to add chest items
function lucky_block:add_chest_items(list)
	for s = 1, #list do
		table.insert(chest_stuff, list[s])
	end
end

-- particle effects
function effect(pos, amount, texture, max_size)
	minetest.add_particlespawner({
		amount = amount,
		time = 0.5,
		minpos = {x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		maxpos = {x = pos.x + 1, y = pos.y + 1, z = pos.z + 1},
		minvel = {x = -5, y = -5, z = -5},
		maxvel = {x = 5,  y = 5,  z = 5},
		minacc = {x = -4, y = -4, z = -4},
		maxacc = {x = 4, y = 4, z = 4},
		minexptime = 1,
		maxexptime = 3,
		minsize = 0.5,
		maxsize = (max_size or 1),
		texture = texture,
	})
end

-- modified from TNT mod to deal entity damage only
function entity_physics(pos, radius)

	radius = radius * 2

	local objs = minetest.get_objects_inside_radius(pos, radius)
	local obj_pos, dist

	for _, obj in pairs(objs) do

		obj_pos = obj:getpos()
		dist = math.max(1, vector.distance(pos, obj_pos))

		local damage = math.floor((4 / dist) * radius)
		obj:set_hp(obj:get_hp() - damage)
	end
end

-- get node but use fallback for nil or unknown
function node_ok(pos, fallback)

	fallback = fallback or "default:dirt"

	local node = minetest.get_node_or_nil(pos)

	if not node then
		return minetest.registered_nodes[fallback]
	end

	local nodef = minetest.registered_nodes[node.name]

	if nodef then
		return node
	end

	return minetest.registered_nodes[fallback]
end

-- set content id's
local c_air = minetest.get_content_id("air")
local c_ignore = minetest.get_content_id("ignore")
local c_obsidian = minetest.get_content_id("default:obsidian")
local c_brick = minetest.get_content_id("default:obsidianbrick")
local c_chest = minetest.get_content_id("default:chest_locked")

-- explosion
function explosion(pos, radius)

	-- play explosion sound
	minetest.sound_play("tnt_explode", {
		pos = pos,
		gain = 1.0,
		max_hear_distance = 16
	})

	-- if area protected then no blast damage
	if minetest.is_protected(pos, "") then
		return
	end

	local vm = VoxelManip()
	local minp, maxp = vm:read_from_map(vector.subtract(pos, radius), vector.add(pos, radius))
	local a = VoxelArea:new({MinEdge = minp, MaxEdge = maxp})
	local data = vm:get_data()
	local p = {}
	local pr = PseudoRandom(os.time())

	for z = -radius, radius do
	for y = -radius, radius do
	local vi = a:index(pos.x + (-radius), pos.y + y, pos.z + z)
	for x = -radius, radius do

		p.x = pos.x + x
		p.y = pos.y + y
		p.z = pos.z + z

		if (x * x) + (y * y) + (z * z) <= (radius * radius) + pr:next(-radius, radius)
		and data[vi] ~= c_air
		and data[vi] ~= c_ignore
		and data[vi] ~= c_obsidian
		and data[vi] ~= c_brick
		and data[vi] ~= c_chest then

			local n = node_ok(p).name
			local on_blast = minetest.registered_nodes[n].on_blast

			if on_blast then
				return on_blast(p)
			end


			if minetest.get_item_group(n, "unbreakable") ~= 1 then

				-- if chest then drop items inside
				if n == "default:chest"
				or n == "3dchest:chest"
				or n == "bones:bones" then

					local meta = minetest.get_meta(p)
					local inv  = meta:get_inventory()

					for i = 1, inv:get_size("main") do

						local m_stack = inv:get_stack("main", i)
						local obj = minetest.add_item(p, m_stack)

						if obj then
							obj:setvelocity({
								x = math.random(-2, 2),
								y = 7,
								z = math.random(-2, 2)
							})
						end
					end
				end

				minetest.set_node(p, {name = "air"})
				effect(p, 2, "tnt_smoke.png", 5)
			end
		end
		vi = vi + 1
	end
	end
	end
end

function fill_chest(pos, items)

	local stacks = items or {}
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

	inv:set_size("main", 8 * 4)

	for i = 0, 2, 1 do
		local stuff = chest_stuff[math.random(1, #chest_stuff)]
		table.insert(stacks, {name = stuff.name, count = math.random(1, stuff.max)})
	end

	for s = 1, #stacks do
		if not inv:contains_item("main", stacks[s]) then
			inv:set_stack("main", math.random(1, 32), stacks[s])
		end
	end
end

-- this is what happens when you dig a lucky block
local lucky_block = function(pos, digger)

	local luck = math.random(1, #lucky_list) ; --luck = 1
	local action = lucky_list[luck][1]
	local schem

	print ("luck ["..luck.." of "..#lucky_list.."]", action)

	-- place schematic
	if action == "sch" then

		if #lucky_schems == 0 then
			print ("[lucky block] No schematics")
			return
		end

		local schem = lucky_list[luck][2]
		local switch = lucky_list[luck][3] or 0
		local force = lucky_list[luck][4]

		if switch == 1 then
			pos = digger:getpos()
		end

		for i = 1, #lucky_schems do

			if schem == lucky_schems[i][1] then

				local p1 = vector.subtract(pos, lucky_schems[i][3]) 

				minetest.place_schematic(p1, lucky_schems[i][2], "", {}, force)

				break
			end
		end

	-- place node (if chest then fill chest)
	elseif action == "nod" then

		local nod = lucky_list[luck][2]
		local switch = lucky_list[luck][3]
		local items = lucky_list[luck][4]

		if switch == 1 then
			pos = digger:getpos()
		end

		if not minetest.registered_nodes[nod] then
			print (nod)
			nod = "default:goldblock"
		end

		effect(pos, 25, "tnt_smoke.png", 8)
		minetest.set_node(pos, {name = nod})

		if nod == "default:chest" then
			fill_chest(pos, items)
		end

	-- place entity
	elseif action == "spw" then

		local pos2 = {}
		local num = lucky_list[luck][3] or 1
		local tame = lucky_list[luck][4]
		local own = lucky_list[luck][5]
		local range = lucky_list[luck][6] or 5
		local name = lucky_list[luck][7]

		for i = 1, num do

			pos2.x = pos.x + lucky_block.seed:next(-range, range)
			pos2.y = pos.y + 1
			pos2.z = pos.z + lucky_block.seed:next(-range, range)

			if minetest.registered_nodes[node_ok(pos2).name].walkable == false then

				local entity = lucky_list[luck][2]

				-- coloured sheep
				if entity == "mobs:sheep" then
					local colour = "_" .. all_colours[math.random(#all_colours)]
					entity = "mobs:sheep" .. colour
				end

				local mob = minetest.add_entity(pos2, entity)

				if mob and mob:get_luaentity() then

					local ent = mob:get_luaentity()

					if tame then
						ent.tamed = true
					end

					if own then
						ent.owner = digger:get_player_name()
					end

					if name then
						ent.nametag = name
						ent.object:set_properties({
							nametag = name,
							nametag_color = "#FFFF00"
						})
					end
				else
					mob:remove()
					print ("[lucky_block] " .. entity .. " could not be spawned")
				end
			end
		end

	-- explosion
	elseif action == "exp" then

		explosion(pos, 2)
		entity_physics(pos, 2)

	-- teleport
	elseif action == "tel" then

		local xz_range = lucky_list[luck][2] or 10
		local y_range = lucky_list[luck][3] or 5

		pos.x = pos.x + lucky_block.seed:next(-xz_range, xz_range)
		pos.x = pos.y + lucky_block.seed:next(-y_range, y_range)
		pos.x = pos.z + lucky_block.seed:next(-xz_range, xz_range)

		effect(pos, 25, "tnt_smoke.png", 8)

		digger:moveto(pos, false)

	-- drop items
	elseif action == "dro" then

		local num = lucky_list[luck][3] or 1
		local colours = lucky_list[luck][4]
		local items = #lucky_list[luck][2]

		for i = 1, num do

			local item = lucky_list[luck][2][math.random(1, items)]

			if colours then
				item = item .. all_colours[math.random(#all_colours)]
			end

			local obj = minetest.add_item(pos, item)

			if obj then
				obj:setvelocity({
					x = math.random(-1.5, 1.5),
					y = 6,
					z = math.random(-1.5, 1.5)
				})
			end
		end

	-- lightning strike
	elseif action == "lig" then

		local nod = lucky_list[luck][2]

		if nod and not minetest.registered_nodes[nod] then
			print (nod)
			nod = "fire:basic_flame"
		end

		pos = digger:getpos()

		if nod then
			minetest.set_node(pos, {name = nod})
		end

		minetest.add_particlespawner({
			amount = 1,
			time = 1,
			minpos = {x = pos.x, y = pos.y , z = pos.z},
			maxpos = {x = pos.x, y = pos.y, z = pos.z},
			minvel = {x = 0, y = 0, z = 0},
			maxvel = {x = 0, y = 0, z = 0},
			minacc = {x = 0, y = 0, z = 0},
			maxacc = {x = 0, y = 0, z = 0},
			minexptime = 1,
			maxexptime = 3,
			minsize = 100,
			maxsize = 150,
			texture = "lucky_lightning.png",
		})

		entity_physics(pos, 2)

		minetest.sound_play("lightning", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 25
		})
	
	-- falling nodes
	elseif action == "fal" then

		local nods = lucky_list[luck][2]
		local switch = lucky_list[luck][3]
		local spread = lucky_list[luck][4]
		local range = lucky_list[luck][5] or 5

		if switch == 1 then
			pos = digger:getpos()
		end

		if spread then
			pos.y = pos.y + 10
		else
			pos.y = pos.y + #nods
		end

		minetest.remove_node(pos)

		local pos2 = pos

		for s = 1, #nods do

			minetest.after(0.5 * s, function()

				if spread then
					pos2.x = pos.x + lucky_block.seed:next(-range, range)
					pos2.z = pos.z + lucky_block.seed:next(-range, range)
				end

				local n = minetest.registered_nodes[nods[s]]
				local obj = minetest.add_entity(pos2, "__builtin:falling_node")

				obj:get_luaentity():set_node(n)
			end)
		end

	-- troll block, disappears or explodes after 2 seconds
	elseif action == "tro" then

		local nod = lucky_list[luck][2]
		local snd = lucky_list[luck][3]
		local exp = lucky_list[luck][4]

		minetest.set_node(pos, {name = nod})

		if snd then
			minetest.sound_play(snd, {
				pos = pos,
				gain = 1.0,
				max_hear_distance = 10
			})
		end

		minetest.after(2.0, function()

			if exp then

				explosion(pos, 2)
				entity_physics(pos, 2)
			else

				minetest.set_node(pos, {name = "air"})

				minetest.sound_play("default_hard_footstep", {
					pos = pos,
					gain = 1.0,
					max_hear_distance = 10
				})
			end
		end)

	end
end

-- lucky block itself
minetest.register_node('lucky_block:lucky_block', {
	description = "Lucky Block",
	tiles = {{
		name="lucky_block_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = minetest.inventorycube("lucky_block.png"),
	sunlight_propagates = false,
	is_ground_content = false,
	paramtype = 'light',
	light_source = 3,
	groups = {oddly_breakable_by_hand = 3},
	sounds = default.node_sound_wood_defaults(),

	on_dig = function(pos, node, digger)
		minetest.set_node(pos, {name = "air"})
		lucky_block(pos, digger)
	end,
})

minetest.register_craft({
	output = "lucky_block:lucky_block",
	recipe = {
		{"", "default:goldblock", ""},
		{"default:goldblock", "default:chest", "default:goldblock"},
		{"", "default:goldblock", ""}
	}
})

-- super lucky block
minetest.register_node('lucky_block:super_lucky_block', {
	description = "Super Lucky Block (use Pick)",
	tiles = {{
		name="lucky_block_super_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = minetest.inventorycube("lucky_block_super.png"),
	sunlight_propagates = false,
	is_ground_content = false,
	paramtype = 'light',
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Super Lucky Block")
	end,

	on_dig = function(pos)

		minetest.set_node(pos, {name = "default:diamondblock"})

		effect(pos, 25, "tnt_smoke.png", 8)

		minetest.sound_play("fart1", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 10
		})
	end,
})

print ("[MOD] Lucky Blocks loaded ("..#lucky_list.." in total)")
