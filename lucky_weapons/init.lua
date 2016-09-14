minetest.register_tool("lucky_weapons:dagger_wood", {
	description = "Wooden Dagger",
	inventory_image = "weapons_wood_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=3.2, [3]=0.80}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=1},
	}
})

minetest.register_tool("lucky_weapons:dagger_stone", {
	description = "Stone Dagger",
	inventory_image = "weapons_stone_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			snappy={times={[1]=5, [2]=2.4, [3]=0.7}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	}
})


minetest.register_tool("lucky_weapons:dagger_steel", {
	description = "Steel Dagger",
	inventory_image = "weapons_steel_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=5, [2]=2.4, [3]=0.7}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	}
})



minetest.register_tool("lucky_weapons:dagger_bronze", {
	description = "Bronze Dagger",
	inventory_image = "weapons_bronze_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=5, [2]=2.4, [3]=0.7}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	}
})


minetest.register_tool("lucky_weapons:dagger_mese", {
	description = "Mese Dagger",
	inventory_image = "weapons_mese_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=4.0, [2]=2.00, [3]=0.7}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=3.5},
	}
})


minetest.register_tool("lucky_weapons:dagger_diamond", {
	description = "Diamond Dagger",
	inventory_image = "weapons_diamond_dagger.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=3.8, [2]=1.8, [3]=0.60}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	}
})


minetest.register_tool("lucky_weapons:staff_wood", {
	description = "Wooden Staff",
	inventory_image = "weapons_wood_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=4.5, [2]=2.2, [3]=1.2}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})


minetest.register_tool("lucky_weapons:staff_stone", {
	description = "Stone Staff",
	inventory_image = "weapons_stone_staff.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=2.7, [2]=1.80, [3]=0.75}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})


minetest.register_tool("lucky_weapons:staff_steel", {
	description = "Steel Staff",
	inventory_image = "weapons_steel_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.0, [2]=1.35, [3]=0.60}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	}
})


minetest.register_tool("lucky_weapons:staff_bronze", {
	description = "Bronze Staff",
	inventory_image = "weapons_bronze_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.0, [2]=1.35, [3]=0.60}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	}
})


minetest.register_tool("lucky_weapons:staff_mese", {
	description = "Mese Staff",
	inventory_image = "weapons_mese_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.4, [2]=0.90, [3]=0.45}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	}
})


minetest.register_tool("lucky_weapons:staff_diamond", {
	description = "Diamond Staff",
	inventory_image = "weapons_diamond_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.3, [2]=0.75, [3]=0.45}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=500},
	}
})


minetest.register_tool("lucky_weapons:battleaxe_wood", {
	description = "Wooden Battleaxe",
	inventory_image = "weapons_wood_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=4.5, [3]=3.00}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	}
})


minetest.register_tool("lucky_weapons:battleaxe_stone", {
	description = "Stone Battleaxe",
	inventory_image = "weapons_stone_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.8,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=4.5, [2]=3.00, [3]=2.25}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4.5},
	}
})


minetest.register_tool("lucky_weapons:battleaxe_steel", {
	description = "Steel Battleaxe",
	inventory_image = "weapons_steel_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.1, [3]=1.5}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})


minetest.register_tool("lucky_weapons:battleaxe_bronze", {
	description = "Bronze Battleaxe",
	inventory_image = "weapons_bronze_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.75, [2]=2.1, [3]=1.5}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})


minetest.register_tool("lucky_weapons:battleaxe_mese", {
	description = "Mese Battleaxe",
	inventory_image = "weapons_mese_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.35,
		max_drop_level=1,
		groupcaps={
			choppy=876,
			cracky=576
		},
		damage_groups = {fleshy=198, fire=54, cracky=176, choppy=875},
	}
})


minetest.register_tool("lucky_weapons:battleaxe_diamond", {
	description = "Diamond Battleaxe",
	inventory_image = "weapons_diamond_battleaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.35,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.15, [2]=1.35, [3]=0.75}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=10},
	}
})







local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath.."/shooter.lua")

if SHOOTER_ENABLE_CROSSBOW == true then
	dofile(modpath.."/crossbow.lua")
end
if SHOOTER_ENABLE_FLAMETHROWER == true then
	dofile(modpath.."/flamethrower.lua")
end
if SHOOTER_ENABLE_GUNS == true then
	dofile(modpath.."/guns.lua")
end
if SHOOTER_ENABLE_FLARES == true then
	dofile(modpath.."/flaregun.lua")
end
if SHOOTER_ENABLE_HOOK == true then
	dofile(modpath.."/grapple.lua")
end
if SHOOTER_ENABLE_GRENADES == true then
	dofile(modpath.."/grenade.lua")
end
if SHOOTER_ENABLE_ROCKETS == true then
	dofile(modpath.."/rocket.lua")
end
if SHOOTER_ENABLE_TURRETS == true then
	dofile(modpath.."/turret.lua")
end

--qt_random

local actions  =  52

minetest.register_node("lucky_weapons:random_block", {
	description = "Lucky Block",
	tiles = {"random.png"},
	is_ground_content = false,
	groups = {oddly_breakable_by_hand=2},
	on_dig = function(pos, node, digger)
		local rn = math.random(1, actions)
		--local rn = math.random(51, actions)
		if rn == 1 then
			minetest.add_item(pos,'default:stick 11')
			minetest.remove_node (pos)
		end
		if rn == 2 then
			minetest.add_item(pos, 'default:stick 9')
			minetest.remove_node (pos)
		end
		if rn == 3 then
			minetest.add_item(pos,'default:stick 3')
			minetest.remove_node (pos)
		end
		if rn == 4 then
			minetest.add_item(pos,'default:diamond 5')
			minetest.remove_node (pos)
		end
		if rn == 5 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:diamondblock"})
		end
		if rn == 6 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "qt:block_gem_blue"})
		end
		if rn == 7 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "qt:block_gem_red"})
		end
		if rn == 8 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "qt:block_gem_green"})
		end
		if rn == 9 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "qt:block_gem_sky_blue"})
		end
		if rn == 10 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:mese"})
		end
		if rn == 11 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:goldblock"})
		end
		if rn == 12 then
			minetest.add_item(pos,'default:apple 10')
			minetest.remove_node (pos)
		end
		if rn == 13 then
			minetest.remove_node (pos)
			minetest.add_item(pos,'farming:bread 7')
		end
		if rn == 14 then
			minetest.remove_node (pos)
			minetest.add_item(pos,'lucky_weapons:super_gold_apple 7')
		end
		if rn == 15 then
			minetest.remove_node (pos)
			minetest.add_item(pos,'qt:pumpkin 7')
		end
		if rn == 16 then
			minetest.remove_node (pos)
			minetest.add_item(pos,'qt:meat 7')
		end
		if rn == 17 then
			minetest.remove_node (pos)
			minetest.add_item(pos,'lucky_weapons:magic_apple 3')
		end
		if rn == 18 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:water_source"})
		end
		if rn == 19 then
			minetest.remove_node (pos)
			qt.explode(pos, 3)
		end
		if rn == 20 then
			minetest.remove_node (pos)
			qt.explode(pos, 7)
		end
		if rn == 21 then
			minetest.remove_node (pos)
			minetest.add_entity(pos, "qt:boss_living_sand")
		end
		if rn == 22 then
			minetest.remove_node (pos)
			minetest.add_entity(pos, "qt:boss_avenging_ent")
		end
		if rn == 23 then
			minetest.remove_node (pos)
			minetest.add_entity({x = pos.x, y = pos.y + 1, z = pos.z}, "qt:boss_zombie_pumpkin")
		end
		if rn == 24 then
			minetest.remove_node (pos)
			minetest.add_entity(pos, "qt:boss_grim_reaper")
		end
		if rn == 25 then
			minetest.remove_node (pos)
			minetest.add_entity({x = pos.x, y = pos.y + 1, z = pos.z}, "qt:villager")
		end
		if rn == 26 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:dirt"})
		end
		if rn == 27 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:sand"})
		end
		if rn == 28 then
			minetest.add_item(pos,'qt:gem_red 5')
			minetest.remove_node (pos)
		end
		if rn == 29 then
			minetest.add_item(pos,'qt:gem_green 5')
			minetest.remove_node (pos)
		end
		if rn == 30 then
			minetest.add_item(pos,'qt:gem_blue 5')
			minetest.remove_node (pos)
		end
		if rn == 31 then
			minetest.add_item(pos,'qt:gem_sky_blue 5')
			minetest.remove_node (pos)
		end
		if rn == 32 then
			minetest.add_item(pos,'default:mese_crystal 7')
			minetest.remove_node (pos)
		end
		if rn == 33 then
			minetest.add_item(pos,'dye:white')
			minetest.add_item(pos,'dye:grey')
			minetest.add_item(pos,'dye:dark_grey')
			minetest.add_item(pos,'dye:black')
			minetest.add_item(pos,'dye:violet')
			minetest.add_item(pos,'dye:blue')
			minetest.add_item(pos,'dye:cyan')
			minetest.add_item(pos,'dye:dark_green')
			minetest.add_item(pos,'dye:green')
			minetest.add_item(pos,'dye:yellow')
			minetest.add_item(pos,'dye:brown')
			minetest.add_item(pos,'dye:orange')
			minetest.add_item(pos,'dye:red')
			minetest.add_item(pos,'dye:magenta')
			minetest.add_item(pos,'dye:pink')
			minetest.remove_node (pos)
		end
		if rn == 34 then
			minetest.add_item(pos,'wool:white')
			minetest.add_item(pos,'wool:grey')
			minetest.add_item(pos,'wool:dark_grey')
			minetest.add_item(pos,'wool:black')
			minetest.add_item(pos,'wool:violet')
			minetest.add_item(pos,'wool:blue')
			minetest.add_item(pos,'wool:cyan')
			minetest.add_item(pos,'wool:dark_green')
			minetest.add_item(pos,'wool:green')
			minetest.add_item(pos,'wool:yellow')
			minetest.add_item(pos,'wool:brown')
			minetest.add_item(pos,'wool:orange')
			minetest.add_item(pos,'wool:red')
			minetest.add_item(pos,'wool:magenta')
			minetest.add_item(pos,'wool:pink')
			minetest.remove_node (pos)
		end
		if rn == 35 then
			minetest.remove_node (pos)
			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z}, {name = "default:stone"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z}, {name = "default:stone"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z}, {name = "default:stone"})
			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z+1}, {name = "default:stone"})
			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z-1}, {name = "default:stone"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z+1}, {name = "default:stone"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z-1}, {name = "default:stone"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z+1}, {name = "default:stone"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z-1}, {name = "default:stone"})
			minetest.set_node({x = pos.x+1, y = pos.y, z = pos.z+1}, {name = "qt_random:random_block"})
			minetest.set_node({x = pos.x+1, y = pos.y, z = pos.z-1}, {name = "qt_random:random_block"})
			minetest.set_node({x = pos.x-1, y = pos.y, z = pos.z+1}, {name = "qt_random:random_block"})
			minetest.set_node({x = pos.x-1, y = pos.y, z = pos.z-1}, {name = "qt_random:random_block"})
		end
		if rn == 36 then
			minetest.add_item(pos,'default:clay_lump 11')
			minetest.remove_node (pos)
		end
		if rn == 37 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:clay"})
		end
		if rn == 38 then
			minetest.add_item(pos,'default:book 33')
			minetest.remove_node (pos)
		end
		if rn == 39 then
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			minetest.add_item(pos,'default:mese_crystal_fragment 99')
			--inventory bomber, if they pick them up!
			minetest.remove_node (pos)
		end
		if rn == 40 then
			minetest.add_item(pos,'default:obsidian_shard 33')
			minetest.add_item(pos,'default:obsidian 5')
			minetest.remove_node (pos)
		end
		if rn == 41 then
			minetest.add_item(pos,'bucket:bucket_empty')
			minetest.add_item(pos,'bucket:bucket_empty')
			minetest.add_item(pos,'bucket:bucket_water')
			minetest.add_item(pos,'bucket:bucket_water')
			minetest.add_item(pos,'bucket:bucket_lava')
			minetest.add_item(pos,'bucket:bucket_lava')
			minetest.remove_node (pos)
		end
		--if rn == 43 then
			--minetest.chat_send_player(digger, "You are so Lucky!") -- LOL
			--minetest.remove_node (pos)
		--end
		if rn == 42 then
			minetest.remove_node (pos)
			--pyramid
			--core block
			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z}, {name = "default:sandstonebrick"})

			--base
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y-1, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y-1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y-1, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y-1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y-1, z = pos.z-2}, {name = "default:sandstonebrick"})

			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y-1, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y-1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y-1, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y-1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y-1, z = pos.z-2}, {name = "default:sandstonebrick"})

			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z+2}, {name = "default:sandstonebrick"})

			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x, y = pos.y-1, z = pos.z-2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y-1, z = pos.z-2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y-1, z = pos.z-2}, {name = "default:sandstonebrick"})

			--layer1
			minetest.set_node({x = pos.x+2, y = pos.y, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+2, y = pos.y, z = pos.z-2}, {name = "default:sandstonebrick"})

			minetest.set_node({x = pos.x-2, y = pos.y, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-2, y = pos.y, z = pos.z-2}, {name = "default:sandstonebrick"})

			minetest.set_node({x = pos.x, y = pos.y, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y, z = pos.z+2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x, y = pos.y, z = pos.z-2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y, z = pos.z-2}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y, z = pos.z-2}, {name = "default:sandstonebrick"})

			minetest.set_node({x = pos.x+1, y = pos.y, z = pos.z+1}, {name = "qt_random:random_block"})
			minetest.set_node({x = pos.x+1, y = pos.y, z = pos.z-1}, {name = "qt_random:random_block"})
			minetest.set_node({x = pos.x-1, y = pos.y, z = pos.z+1}, {name = "qt_random:random_block"})
			minetest.set_node({x = pos.x-1, y = pos.y, z = pos.z-1}, {name = "qt_random:random_block"})

			--layer2
			minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x, y = pos.y+1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x+1, y = pos.y+1, z = pos.z-1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z+1}, {name = "default:sandstonebrick"})
			minetest.set_node({x = pos.x-1, y = pos.y+1, z = pos.z-1}, {name = "default:sandstonebrick"})

			--layer3
			minetest.set_node({x = pos.x, y = pos.y+2, z = pos.z}, {name = "default:sandstonebrick"})
		end

		if rn == 43 then
			minetest.remove_node (pos)
			for a = 0, 10 do
				minetest.set_node({x = pos.x, y = pos.y+a, z = pos.z}, {name = "qt:farmite_block"})
			end
		end

		if rn == 44 then
			minetest.remove_node (pos)
			for a = 0, 10 do
				minetest.set_node({x = pos.x, y = pos.y+a, z = pos.z}, {name = "qt:olmite_block"})
			end
		end

		if rn == 45 then
			minetest.remove_node (pos)
			for a = 0, 10 do
				minetest.set_node({x = pos.x, y = pos.y+a, z = pos.z}, {name = "qt:gunpowder_block"})
			end
		end

		if rn == 46 then
			minetest.remove_node (pos)
			minetest.set_node(pos, {name = "default:lava_source"})
		end
		if rn == 47 then
			minetest.add_item(pos,'qt:arrow 99')
			minetest.remove_node (pos)
		end
		if rn == 48 then
			minetest.add_item(pos,'qt:bow_med')
			minetest.remove_node (pos)
		end
		if rn == 49 then
			minetest.add_item(pos,'qt:bow_high')
			minetest.remove_node (pos)
		end
		if rn == 50 then
			minetest.add_item(pos,'qt:bow_obsidian')
			minetest.remove_node (pos)
		end
		if rn == 50 then
			minetest.add_item(pos,'qt:bow_fire')
			minetest.remove_node (pos)
		end
		if rn == 50 then
			minetest.add_item(pos,'qt:bow_lava')
			minetest.remove_node (pos)
		end
		if rn == 50 then
			minetest.add_item(pos,'qt:bow_water')
			minetest.remove_node (pos)
		end
		if rn == 50 then
			minetest.add_item(pos,'qt:bow_ice')
			minetest.remove_node (pos)
		end
		if rn == 51 then
			minetest.remove_node (pos)
			minetest.add_entity(pos, "qt:gold_tnt_entity")
		end
		if rn == 52 then
			minetest.remove_node (pos)
			local ppos = digger:getpos()
			digger:setpos({x = ppos.x, y = ppos.y+100, z = ppos.z})
		end
		if rn == 53 then
			minetest.remove_node (pos)
			local ppos = digger:getpos()
			minetest.env:set_node({x = ppos.x, y = ppos.y+2, x = ppos.z}, {name = "default:sand"})
			minetest.env:set_node({x = ppos.x, y = ppos.y+3, x = ppos.z}, {name = "default:sand"})
			nodeupdate({x = ppos.x, y = ppos.y+2, z = ppos.z})
		end
		if rn == 54 then
			minetest.remove_node (pos)

		end
		if rn == 55 then
			minetest.remove_node (pos)

		end
		if rn == 56 then
			minetest.remove_node (pos)

		end
		if rn == 57 then
			minetest.remove_node (pos)

		end
		if rn == 58 then
			minetest.remove_node (pos)

		end
		if rn == 59 then
			minetest.remove_node (pos)

		end
		if rn == 60 then
			minetest.remove_node (pos)

		end
	end
})


minetest.register_node("lucky_weapons:present", {
	description = "Christmas Present",
	tiles = {"present_top.png", "present_top.png", "present_side.png",
		"present_side.png", "present_side.png", "present_side.png"},
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=1},
	legacy_facedir_simple = true,
	is_ground_content = false,
	drop = {
		max_items = 1,
		items = {
			{
				items = {'default:snowblock 1'},
				rarity = 20,
			},
			{
				items = {'default:ice 1'},
				rarity = 20,
			},
			{
				items = {'lucky_weapons:spawn_snowman 1'},
				rarity = 20,
			},
			{
				items = {'default:snowblock 2'},
				rarity = 20,
			},
			{
				items = {'default:ice 2'},
				rarity = 20,
			},
			{
				items = {'lucky_weapons:spawn_snowman 2'},
				rarity = 20,
			},
			{
				items = {'default:snowblock 3'},
				rarity = 20,
			},
			{
				items = {'default:ice 3'},
				rarity = 20,
			},
			{
				items = {'lucky_weapons:spawn_snowman 3'},
				rarity = 20,
			},
			{
				items = {'default:snow 2'},
			}
		}
	},
})
--qt

minetest.register_craftitem("lucky_weapons:magic_dust", {
	description = "Magical Dust",
	inventory_image = "magic_dust.png",
})

minetest.register_node("lucky_weapons:magic_apple", {
	description = "Magical Apple",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"magic_apple.png"},
	inventory_image = "magic_apple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.2, -0.5, -0.2, 0.2, 0, 0.2}
	},
	groups = {fleshy=3,dig_immediate=3,flammable=2},
	on_use = function(itemstack,user, pointed_thing)
		user:set_hp(user:get_hp()+20)
		itemstack:take_item(1)
		playereffects.apply_effect_type("speed_and_jump", 90, user)
		playereffects.apply_effect_type("regen_2", 90, user)
		return itemstack
	end,
	after_place_node = function(pos, placer, itemstack)
		if placer:is_player() then
			minetest.set_node(pos, {name="lucky_weapons:magic_apple", param2=1})
		end
	end,
})

minetest.register_tool("lucky_weapons:magic_wand", {
	description = "Magical Wand",
	inventory_image = "magic_wand.png",
	on_use = function (itemstack, user, pointed_thing)
		if pointed_thing.above ~= nil then
			minetest.remove_node (pointed_thing.under)
			minetest.set_node({x=pointed_thing.under.x, y=pointed_thing.under.y, z=pointed_thing.under.z}, {name="default:mese"})
			itemstack:add_wear(65535/20)
			return itemstack
		end
	end
})
--Weapons!

-- Battle axes:
minetest.register_tool("lucky_weapons:wood_battleaxe", {
    description = "Training Battleaxe",
    inventory_image = "lott_wood_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 2,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=3.75, [2]=2.75, [3]=2.05}, uses=5, maxlevel=1},
            snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=.50},
    },
})

minetest.register_tool("lucky_weapons:stone_battleaxe", {
    description = "Stone Battleaxe",
    inventory_image = "lott_stone_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 1.50,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=3.35, [2]=2.10, [3]=1.85}, uses=5, maxlevel=1},
            snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=1.50},
    },
})

minetest.register_tool("lucky_weapons:copper_battleaxe", {
    description = "Copper Battleaxe",
    inventory_image = "lott_copper_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 1.25,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=3.25, [2]=2.00, [3]=1.75}, uses=5, maxlevel=1},
            snappy={times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=10, maxlevel=1},
        },
        damage_groups = {fleshy=3},
    },
})

minetest.register_tool("lucky_weapons:tin_battleaxe", {
    description = "Tin Battleaxe",
    inventory_image = "lott_tin_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 1.25,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=3.25, [2]=2.00, [3]=1.75}, uses=5, maxlevel=1},
            snappy={times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=10, maxlevel=1},
        },
        damage_groups = {fleshy=3},
    },
})

minetest.register_tool("lucky_weapons:steel_battleaxe", {
    description = "Steel Battleaxe",
    inventory_image = "lott_steel_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 1.05,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=3, [2]=1.90, [3]=1.50}, uses=15, maxlevel=2},
            snappy={times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=25, maxlevel=2},
        },
        damage_groups = {fleshy=4.5},
    },
})

minetest.register_tool("lucky_weapons:bronze_battleaxe", {
    description = "Bronze Battleaxe",
    inventory_image = "lott_bronze_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 0.90,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=2.80, [2]=1.70, [3]=1.30}, uses=20, maxlevel=2},
            snappy={times={[1]=2.55, [2]=1.25, [3]=0.50}, uses=30, maxlevel=2},
        },
        damage_groups = {fleshy=5},
    },
})

minetest.register_tool("lucky_weapons:silver_battleaxe", {
    description = "Silver Battleaxe",
    inventory_image = "lott_silver_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 1,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=2.80, [2]=1.70, [3]=1.30}, uses=15, maxlevel=2},
            snappy={times={[1]=2.60, [2]=1.30, [3]=0.50}, uses=25, maxlevel=2},
        },
        damage_groups = {fleshy=5.5},
    },
})

minetest.register_tool("lucky_weapons:gold_battleaxe", {
    description = "Gold Battleaxe",
    inventory_image = "lott_gold_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = 0.75,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=2.80, [2]=1.70, [3]=1.30}, uses=20, maxlevel=2},
            snappy={times={[1]=2.60, [2]=1.30, [3]=0.50}, uses=30, maxlevel=2},
        },
        damage_groups = {fleshy=5.5},
    },
})

minetest.register_tool("lucky_weapons:galvorn_battleaxe", {
    description = "Galvorn Battleaxe",
    inventory_image = "lott_galvorn_battleaxe.png",
     groups = {forbidden=1},
    tool_capabilities = {
        full_punch_interval = 0.5,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=2.50, [2]=1.50, [3]=.90}, uses=25, maxlevel=2},
            snappy={times={[1]=2.50, [2]=1.50, [3]=0.85}, uses=35, maxlevel=2},
        },
        damage_groups = {fleshy=6},
    },
})

minetest.register_tool("lucky_weapons:mithril_battleaxe", {
    description = "Mithril Battleaxe",
    inventory_image = "lott_mithril_battleaxe.png",
    tool_capabilities = {
        full_punch_interval = .25,
        max_drop_level=1,
        groupcaps={
            choppy={times={[1]=2, [2]=1, [3]=.50}, uses=35, maxlevel=3},
            snappy={times={[1]=1, [2]=1.10, [3]=0.50}, uses=40, maxlevel=3},
        },
        damage_groups = {fleshy=7},
    },
})

--Warhammers:
minetest.register_tool("lucky_weapons:wood_warhammer", {
    description = "Training Warhammer",
    inventory_image = "lott_wood_warhammer.png",
    range = 5,
    tool_capabilities = {
        full_punch_interval = 0.2,
        max_drop_level=1,
        groupcaps={
            snappy=654,
        },
        damage_groups = {fleshy=10.75, fire=13},
    },
})

minetest.register_tool("lucky_weapons:stone_warhammer", {
    description = "Stone Warhammer",
    inventory_image = "lott_stone_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.85, [2]=1.85, [3]=1.10}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=3},
    },
})

minetest.register_tool("lucky_weapons:copper_warhammer", {
    description = "Copper Warhammer",
    inventory_image = "lott_copper_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 1.3,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=3, [2]=1.80, [3]=1.00}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=4.5},
    },
})

minetest.register_tool("lucky_weapons:tin_warhammer", {
    description = "Tin Warhammer",
    inventory_image = "lott_tin_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 1.3,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=3, [2]=1.80, [3]=1.00}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=4.5},
    },
})

minetest.register_tool("lucky_weapons:steel_warhammer", {
    description = "Steel Warhammer",
    inventory_image = "lott_steel_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 1.2,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=25, maxlevel=2},
        },
        damage_groups = {fleshy=6},
    },
})

minetest.register_tool("lucky_weapons:bronze_warhammer", {
    description = "Bronze Warhammer",
    inventory_image = "lott_bronze_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 1.1,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.75, [2]=1.45, [3]=0.60}, uses=30, maxlevel=2},
        },
        damage_groups = {fleshy=6.5},
    },
})

minetest.register_tool("lucky_weapons:silver_warhammer", {
    description = "Silver Warhammer",
    inventory_image = "lott_silver_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 1,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.60, [2]=1.40, [3]=0.50}, uses=20, maxlevel=2},
        },
        damage_groups = {fleshy=7.5},
    },
})

minetest.register_tool("lucky_weapons:gold_warhammer", {
    description = "Gold Warhammer",
    inventory_image = "lott_gold_warhammer.png",
    tool_capabilities = {
        full_punch_interval = 0.75,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.60, [2]=1.40, [3]=0.50}, uses=30, maxlevel=2},
        },
        damage_groups = {fleshy=7.5},
    },
})

minetest.register_tool("lucky_weapons:galvorn_warhammer", {
    description = "Galvorn Warhammer",
    inventory_image = "lott_galvorn_warhammer.png",
    range = 2,
     groups = {forbidden=1},
    tool_capabilities = {
        full_punch_interval = 0.50,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.50, [2]=1.30, [3]=0.45}, uses=35, maxlevel=2},
        },
        damage_groups = {fleshy=8},
    },
})

minetest.register_tool("lucky_weapons:mithril_warhammer", {
    description = "Mithril Warhammer",
    inventory_image = "lott_mithril_warhammer.png",
    range = 2,
    tool_capabilities = {
        full_punch_interval = 0.25,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.60, [2]=1.40, [3]=0.50}, uses=40, maxlevel=3},
        },
        damage_groups = {fleshy=9},
    },
})

--Spears:
minetest.register_tool("lucky_weapons:wood_spear", {
    description = "Training Spear",
    inventory_image = "lott_wood_spear.png",
    wield_image = "lott_wood_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 2,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=3.70, [2]=2.70, [3]=1.70}, uses=3, maxlevel=1},
        },
        damage_groups = {fleshy=.75},
    }
})

minetest.register_tool("lucky_weapons:stone_spear", {
    description = "Stone Spear",
    inventory_image = "lott_stone_spear.png",
    wield_image = "lott_stone_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 1.50,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.75, [2]=1.75, [3]=0.75}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=2},
    }
})

minetest.register_tool("lucky_weapons:copper_spear", {
    description = "Copper Spear",
    inventory_image = "lott_copper_spear.png",
    wield_image = "lott_copper_spear.png^[transformFX",
    tool_capabilities = {
        full_punch_interval = 1.30,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.70, [2]=1.70, [3]=0.70}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=4},
    }
})

minetest.register_tool("lucky_weapons:tin_spear", {
    description = "Tin Spear",
    inventory_image = "lott_tin_spear.png",
    wield_image = "lott_tin_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 1.30,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.70, [2]=1.70, [3]=0.70}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=4},
    }
})

minetest.register_tool("lucky_weapons:steel_spear", {
    description = "Steel Spear",
    inventory_image = "lott_steel_spear.png",
    wield_image = "lott_steel_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 1.20,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.40, [2]=1.40, [3]=0.40}, uses=15, maxlevel=1},
        },
        damage_groups = {fleshy=5},
    }
})

minetest.register_tool("lucky_weapons:bronze_spear", {
    description = "Bronze Spear",
    inventory_image = "lott_bronze_spear.png",
    wield_image = "lott_bronze_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 1.10,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.40, [2]=1.40, [3]=0.40}, uses=20, maxlevel=1},
        },
        damage_groups = {fleshy=5.5},
    }
})

minetest.register_tool("lucky_weapons:silver_spear", {
    description = "Silver Spear",
    inventory_image = "lott_silver_spear.png",
    wield_image = "lott_silver_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 1,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.2, [2]=1.2, [3]=0.20}, uses=15, maxlevel=1},
        },
        damage_groups = {fleshy=6},
    }
})

minetest.register_tool("lucky_weapons:gold_spear", {
    description = "Gold Spear",
    inventory_image = "lott_gold_spear.png",
    wield_image = "lott_gold_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 0.75,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.2, [2]=1.2, [3]=0.20}, uses=20, maxlevel=1},
        },
        damage_groups = {fleshy=6},
    }
})

minetest.register_tool("lucky_weapons:galvorn_spear", {
    description = "Galvorn Spear",
    inventory_image = "lott_galvorn_spear.png",
    wield_image = "lott_galvorn_spear.png^[transformFX",
    range = 15,
     groups = {forbidden=1},
    tool_capabilities = {
        full_punch_interval = 0.01,
        max_drop_level=1,
        groupcaps={
            snappy=123,
        },
        damage_groups = {fleshy=16, fire=9},
    }
})

minetest.register_tool("lucky_weapons:mithril_spear", {
    description = "Mithril Spear",
    inventory_image = "lott_mithril_spear.png",
    wield_image = "lott_mithril_spear.png^[transformFX",
    range = 7,
    tool_capabilities = {
        full_punch_interval = 0.25,
        max_drop_level=1,
        groupcaps={
            snappy={times={[1]=2.00, [2]=1.00, [3]=0.20}, uses=30, maxlevel=2},
        },
        damage_groups = {fleshy=8},
    }
})

--Daggers:
minetest.register_tool("lucky_weapons:wood_dagger", {
    description = "Training Dagger",
    inventory_image = "lott_wood_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 2,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=2.25, [3]=1.75}, uses=2, maxlevel=1},
        },
        damage_groups = {fleshy=.10},
    }
})

minetest.register_tool("lucky_weapons:stone_dagger", {
    description = "Stone Dagger",
    inventory_image = "lott_stone_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=1.35, [3]=0.85}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=.90},
    }
})

minetest.register_tool("lucky_weapons:copper_dagger", {
    description = "Copper Dagger",
    inventory_image = "lott_copper_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 1.2,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=1.25, [3]=0.75}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=2.5},
    }
})

minetest.register_tool("lucky_weapons:tin_dagger", {
    description = "Tin Dagger",
    inventory_image = "lott_tin_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 1.2,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=1.25, [3]=0.75}, uses=5, maxlevel=1},
        },
        damage_groups = {fleshy=2.5},
    }
})

minetest.register_tool("lucky_weapons:steel_dagger", {
    description = "Steel Dagger",
    inventory_image = "lott_steel_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 0.1,
        max_drop_level=0,
        groupcaps={
            cracky=973,
        },
        damage_groups = {fleshy=19, fire=4},
    }
})

minetest.register_tool("lucky_weapons:bronze_dagger", {
    description = "Bronze Dagger",
    inventory_image = "lott_bronze_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=1.00, [3]=0.50}, uses=15, maxlevel=1},
        },
        damage_groups = {fleshy=4.5},
    }
})

minetest.register_tool("lucky_weapons:silver_dagger", {
    description = "Silver Dagger",
    inventory_image = "lott_silver_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = 1,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.80, [3]=0.40}, uses=10, maxlevel=1},
        },
        damage_groups = {fleshy=5},
    }
})

minetest.register_tool("lucky_weapons:gold_dagger", {
    description = "Gold Dagger",
    inventory_image = "lott_gold_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = .6,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.80, [3]=0.40}, uses=15, maxlevel=1},
        },
        damage_groups = {fleshy=15},
    }
})

minetest.register_tool("lucky_weapons:galvorn_dagger", {
    description = "Galvorn Dagger",
    inventory_image = "lott_galvorn_dagger.png",
    range = 3,
     groups = {forbidden=1},
    tool_capabilities = {
        full_punch_interval = .5,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.90, [3]=0.45}, uses=20, maxlevel=1},
        },
        damage_groups = {fleshy=5.5},
    }
})

minetest.register_tool("lucky_weapons:mithril_dagger", {
    description = "Mithril Dagger",
    inventory_image = "lott_mithril_dagger.png",
    range = 3,
    tool_capabilities = {
        full_punch_interval = .25,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.75, [3]=0.35}, uses=25, maxlevel=2},
        },
        damage_groups = {fleshy=6.5},
    }
})
local addvectors = function (v1, v2)
	return {x=v1.x+v2.x, y=v1.y+v2.y, z=v1.z+v2.z}
end

minetest.register_tool("lucky_weapons:firebrand", {
    description = "Firebrand",
    inventory_image = "firebrand.png",
    range = 5,
    tool_capabilities = {
        full_punch_interval = .15,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.75, [3]=0.35}, uses=250, maxlevel=2},
        },
        damage_groups = {fleshy=18}, {cracky=15}, {fire=14},
    },
})	
minetest.register_tool("lucky_weapons:destroyer", {
    description = "Healer",
    inventory_image = "destroyer.png",
    range = 8,
    tool_capabilities = {
        full_punch_interval = .01,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.75, [3]=0.35}, uses=2, maxlevel=2},
        },
        damage_groups = {fleshy=20}, {cracky=17},
    },
})

minetest.register_tool("lucky_weapons:sword_of_chaos", {
    description = "The Sword of Chaos",
    inventory_image = "sword_of_chaos.png",
    range = 20,
    tool_capabilities = {
        full_punch_interval = .01,
        max_drop_level=0,
        groupcaps={
            snappy={times={[2]=.75, [3]=0.35}, uses=100, maxlevel=2},
        },
        damage_groups = {fleshy=17},
    },
})

