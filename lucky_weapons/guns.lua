local addvectors = function (v1, v2)
	return {x=v1.x+v2.x, y=v1.y+v2.y, z=v1.z+v2.z}
end

minetest.register_craftitem("lucky_weapons:flamethrower", {
	description = "Flamethrower",
	inventory_image = "flamethrower.png",
	on_use = function (itemstack, player, pointed_thing)
		-- Throw fire
		local pos = player:getpos()
		local vel = player:get_look_dir()

		local rshift = {x = vel.z/8, z = -vel.x/8, y = 0}

		local minp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		local maxp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		minp = addvectors(minp, rshift)
		maxp = addvectors(maxp, rshift)

		local minvel = {x=vel.x*6-0.5, y=vel.y*6-0.5, z=vel.z*6-0.5}
		local maxvel = {x=vel.x*6+0.5, y=vel.y*6+0.5, z=vel.z*6+0.5}

		minetest.add_particlespawner(300, 0.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "fire_basic_flame.png")

		-- Make stuff burn
		local np = minp
		for i = 0, 5 do
			np = addvectors(np, vel)
			local node = minetest.env:get_node(np)
			if minetest.get_item_group(node.name, "flammable") ~= 0 then
				minetest.env:set_node(np, {name="fire:basic_flame"})
			end

			if node.name == "default:dirt_with_grass" then
				minetest.env:set_node(np, {name="default:dirt"})
			end
		end
	end
})

minetest.register_craftitem("lucky_weapons:flamethrower_plus", {
	description = "Super Flamethrower",
	inventory_image = "flamethrower_plus.png",
	on_use = function (itemstack, player, pointed_thing)
		-- Throw fire
		local pos = player:getpos()
		local vel = player:get_look_dir()

		local rshift = {x = vel.z/8, z = -vel.x/8, y = 0}

		local minp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		local maxp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		minp = addvectors(minp, rshift)
		maxp = addvectors(maxp, rshift)

		local minvel = {x=vel.x*6-0.5, y=vel.y*6-0.5, z=vel.z*6-0.5}
		local maxvel = {x=vel.x*6+0.5, y=vel.y*6+0.5, z=vel.z*6+0.5}

		minetest.add_particlespawner(1000, 0.3,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			2.3, 3,
			0.2, 2,
			false, "fire_plus.png")

		-- Make stuff burn
		local np = minp
		for i = 0, 5 do
			np = addvectors(np, vel)
			local node = minetest.env:get_node(np)
			if minetest.get_item_group(node.name, "flammable") ~= 0 then
				minetest.env:set_node(np, {name="fire:basic_flame"})
			end

			if node.name == "default:dirt_with_grass" then
				minetest.env:set_node(np, {name="default:dirt"})
			end
		end
	end
})
local addvectors = function (v1, v2)
	return {x=v1.x+v2.x, y=v1.y+v2.y, z=v1.z+v2.z}
end

minetest.register_craftitem("lucky_weapons:flamethrower_diamond", {
	description = "Diamond Flamethrower",
	inventory_image = "diamond_flamethrower.png",
	on_use = function (itemstack, player, pointed_thing)
		-- Throw fire
		local pos = player:getpos()
		local vel = player:get_look_dir()

		local rshift = {x = vel.z/8, z = -vel.x/8, y = 0}

		local minp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		local maxp = {x=pos.x, y=pos.y+1.6, z=pos.z}
		minp = addvectors(minp, rshift)
		maxp = addvectors(maxp, rshift)

		local minvel = {x=vel.x*6-0.5, y=vel.y*6-0.5, z=vel.z*6-0.5}
		local maxvel = {x=vel.x*6+0.5, y=vel.y*6+0.5, z=vel.z*6+0.5}

		minetest.add_particlespawner(500, 0.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "diamond.png")

		-- Make stuff burn
		local np = minp
		for i = 0, 5 do
			np = addvectors(np, vel)
			local node = minetest.env:get_node(np)
			if minetest.get_item_group(node.name, "flammable") ~= 0 then
				minetest.env:set_node(np, {name="lucky_drops:compact_diamond_block"})
			end

			if node.name == "default:dirt_with_grass" then
				minetest.env:set_node(np, {name="default:dirt"})
			end
		end
	end
})
shooter:register_weapon("lucky_weapons:pistol", {
	description = "Pistol",
	inventory_image = "shooter_pistol.png",
	rounds = 200,
	spec = {
		range = 100,
		step = 20,
		tool_caps = {full_punch_interval=0.5, damage_groups={fleshy=2}},
		groups = {snappy=3, fleshy=3, oddly_breakable_by_hand=3},
		sound = "shooter_pistol",
		particle = "shooter_cap.png",
	},
})
shooter:register_weapon("lucky_weapons:handgun", {
	description = "Handgun",
	inventory_image = "handgun.png",
	rounds = 300,
	spec = {
		range = 100,
		step = 20,
		shots = 2,
		tool_caps = {full_punch_interval=0.2, damage_groups={fleshy=3}},
		groups = {snappy=3, fleshy=3, oddly_breakable_by_hand=3},
		sound = "handgun",
		particle = "halt_bullet.png",
	},
})

shooter:register_weapon("lucky_weapons:sniper", {
	description = "Sniper Rifle",
	inventory_image = "sniper.png",
	rounds = 30,
	spec = {
		range = 800,
		step = 15,
		tool_caps = {full_punch_interval=0.7, damage_groups={fleshy=15}},
		groups = {cracky=3, snappy=2, crumbly=2, choppy=2, fleshy=1, oddly_breakable_by_hand=1},
		sound = "sniper",
		particle = "shooter_bullet.png",
	},
})

shooter:register_weapon("lucky_weapons:rifle", {
	description = "Rifle",
	inventory_image = "shooter_rifle.png",
	rounds = 50,
	spec = {
		range = 300,
		step = 30,
		tool_caps = {full_punch_interval=0.5, damage_groups={fleshy=3}},
		groups = {snappy=3, crumbly=3, choppy=3, fleshy=2, oddly_breakable_by_hand=2},
		sound = "shooter_rifle",
		particle = "shooter_bullet.png",
	},
})

shooter:register_weapon("lucky_weapons:machine", {
	description = "Super Machine Gun",
	inventory_image = "machine.png",
	rounds = 800,
	spec = {
		range = 200,
		step = 20,
		tool_caps = {full_punch_interval=0.001, damage_groups={fleshy=4}},
		groups = {snappy=3, crumbly=3, choppy=3, fleshy=2, oddly_breakable_by_hand=2},
		sound = "machinegun",
		particle = "shooter_bullet.png",
	},
})

shooter:register_weapon("lucky_weapons:laser", {
	description = "Laser Gun",
	inventory_image = "lasergun.png",
	rounds = 400,
	spec = {
		range = 200,
		step = 20,
		tool_caps = {full_punch_interval=0.1, damage_groups={fleshy=14}},
		groups = {snappy=3, fleshy=3, oddly_breakable_by_hand=3},
		sound = "lasergun",
		particle = "laser.png",
	},
})


shooter:register_weapon("lucky_weapons:rapid", {
	description = "Machine Gun",
	inventory_image = "shooter_rifle.png",
	rounds = 400,
	spec = {
		range = 300,
		step = 30,
		tool_caps = {full_punch_interval=0.01, damage_groups={fleshy=3}},
		groups = {snappy=3, crumbly=3, choppy=3, fleshy=2, oddly_breakable_by_hand=2},
		sound = "shooter_rifle",
		particle = "shooter_bullet.png",
	},
})

shooter:register_weapon("lucky_weapons:shotgun", {
	description = "Shotgun",
	inventory_image = "shooter_shotgun.png",
	rounds = 50,
	spec = {
		range = 50,
		step = 15,
		tool_caps = {full_punch_interval=1.5, damage_groups={fleshy=4}},
		groups = {cracky=3, snappy=2, crumbly=2, choppy=2, fleshy=1, oddly_breakable_by_hand=1},
		sound = "shooter_shotgun",
		particle = "smoke_puff.png",
	},
})

shooter:register_weapon("lucky_weapons:machine_gun", {
	description = "Sub Machine Gun",
	inventory_image = "shooter_smgun.png",
	rounds = 50,
	shots = 4,
	spec = {
		range = 100,
		step = 20,
		tool_caps = {full_punch_interval=0.125, damage_groups={fleshy=2}},
		groups = {snappy=3, fleshy=3, oddly_breakable_by_hand=3},
		sound = "shooter_pistol",
		particle = "shooter_cap.png",
	},
})

minetest.register_craftitem("lucky_weapons:ammo", {
	description = "Ammo pack",
	inventory_image = "shooter_ammo.png",
})

if SHOOTER_ENABLE_CRAFTING == true then
	minetest.register_craft({
		output = "lucky_weapons:pistol 1 65535",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot"},
			{"", "default:mese_crystal"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:handgun 1 65535",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot"},
			{"", "default:diamond"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:rifle 1 65535",
		recipe = {
			{"default:steel_ingot", "", ""},
			{"", "default:bronze_ingot", ""},
			{"", "default:mese_crystal", "default:bronze_ingot"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:rapid 1 65535",
		recipe = {
			{"default:steel_ingot", "", ""},
			{"", "default:bronze_ingot", ""},
			{"", "default:diamond", "default:bronze_ingot"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:shotgun 1 65535",
		recipe = {
			{"default:steel_ingot", "", ""},
			{"", "default:steel_ingot", ""},
			{"", "default:mese_crystal", "default:bronze_ingot"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:laser 1 65535",
		recipe = {
			{"default:steel_ingot", "", ""},
			{"", "default:steel_ingot", "default:diamond"},
			{"", "default:mese_crystal", "default:bronze_ingot"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:sniper 1 65535",
		recipe = {
			{"default:steel_ingot", "", ""},
			{"", "default:steel_ingot", ""},
			{"", "default:diamond", "default:bronze_ingot"},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:machine_gun 1 65535",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"", "default:bronze_ingot", "default:mese_crystal"},
			{"", "default:bronze_ingot", ""},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:machine 1 65535",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"", "default:bronze_ingot", "default:diamond"},
			{"", "default:bronze_ingot", ""},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:flamethrower 1",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"", "default:copper_ingot", "default:diamond"},
			{"", "default:copper_ingot", ""},
		},
	})
	minetest.register_craft({
		output = "lucky_weapons:ammo",
		recipe = {
			{"tnt:gunpowder", "default:bronze_ingot"},
		},
	})
end

local rounds_update_time = 0

minetest.register_globalstep(function(dtime)
	shooter.time = shooter.time + dtime
	if shooter.time - rounds_update_time > SHOOTER_ROUNDS_UPDATE_TIME then
		for i, round in ipairs(shooter.rounds) do
			if shooter:process_round(round) or round.dist > round.def.range then
				table.remove(shooter.rounds, i)
			else
				local v = vector.multiply(round.ray, round.def.step)
				shooter.rounds[i].pos = vector.add(round.pos, v)
				shooter.rounds[i].dist = round.dist + round.def.step
			end
		end
		rounds_update_time = shooter.time
	end
	if shooter.time > 100000 then
		shooter.shots = {}
		rounds_update_time = 0
		shooter.reload_time = 0
		shooter.update_time = 0
		shooter.time = 0
	end
end)

