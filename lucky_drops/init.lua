minetest.register_tool("lucky_drops:staff_magic", {
	description = "Magic Staff",
	inventory_image = "weapons_diamond_staff.png",
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=2.3, [2]=0.75, [3]=0.45}, uses=10, maxlevel=3},
			cracky = {times={[1]=2.3, [2]=0.75, [3]=0.45}, uses=10, maxlevel=3},
			soil = {times={[1]=2.3, [2]=0.75, [3]=0.45}, uses=10, maxlevel=3},
			immortal = {times={[1]=2.3, [2]=0.75, [3]=0.45}, uses=10, maxlevel=3},
		},
		damage_groups = {fleshy=15, cracky=15, fire=3, immortal=20},
	}
})


minetest.register_craftitem("lucky_drops:shovel", {
	description = "FlameShovel",
	inventory_image = "flameshovel.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level = 0,
		damage_groups = {fleshy=13, cracky=13, fire=13},
	},
})
minetest.register_craftitem("lucky_drops:compressed_diamond", {
	description = "Compressed diamond",
	inventory_image = "compressed_diamond.png"
})
minetest.register_craft({
	output = 'default:diamondblock 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compressed_diamond',''},
		{'','',''}
	}
})

minetest.register_craftitem("lucky_drops:compressed_purified_diamond", {
	description = "Compressed Purified diamond",
	inventory_image = "compressed_purified_diamond.png"
})
minetest.register_craft({
	output = 'lucky_drops:compressed_diamond_block 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compressed_purified_diamond',''},
		{'','',''}
	}
})

minetest.register_craftitem("lucky_drops:compact_diamond", {
	description = "Compact diamond",
	inventory_image = "compact_diamond.png"
})
minetest.register_craft({
	output = 'lucky_drops:compressed_purified_diamond_block 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compact_diamond',''},
		{'','',''}
	}
})

minetest.register_craftitem("lucky_drops:compact_purified_diamond", {
	description = "Compact purified diamond",
	inventory_image = "compact_purified_diamond.png"
})
minetest.register_craft({
	output = 'lucky_drops:compact_diamond_block 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compact_purified_diamond',''},
		{'','',''}
	}
})

minetest.register_craftitem("lucky_drops:enchanted_diamond", {
	description = "Enchanted diamond",
	inventory_image = "enchanted_diamond.png"
})
minetest.register_craft({
	output = 'lucky_drops:compact_purified_diamond_block 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:enchanted_diamond',''},
		{'','',''}
	}
})

minetest.register_craftitem("lucky_drops:enchanted_purified_diamond", {
	description = "Enchanted purified diamond",
	inventory_image = "enchanted_purified_diamond.png"
})
minetest.register_craft({
	output = 'lucky_drops:enchanted_diamond_block 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:enchanted_purified_diamond',''},
		{'','',''}
	}
})

minetest.register_craftitem("lucky_drops:ultimate_diamond", {
	description = "Ultimate diamond",
	inventory_image = "ultimate_diamond.png"
})
minetest.register_craftitem("lucky_drops:emerald", {
	description = "Emerald",
	inventory_image = "emerald.png"
})
minetest.register_craftitem("lucky_drops:horse", {
	description = "Diamond Horse Armor",
	inventory_image = "horsearm.png"
})

minetest.register_craftitem("lucky_drops:saddel", {
	description = "Saddel",
	inventory_image = "saddel.png"
})
minetest.register_craftitem("lucky_drops:end", {
	description = "End Portal Frame",
	inventory_image = "endportal.png"
})
minetest.register_node("lucky_drops:tnt", {
	description = "TNT",
	visual_scale = 1.0,
	tiles = {"tnt.png"},
	inventory_image = "tnt.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})


minetest.register_node("lucky_drops:compact_diamond_block", {
	description = "compact diamond block",
	visual_scale = 1.0,
	tiles = {"compact_diamond_block.png"},
	inventory_image = "compact_diamond_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})

minetest.register_node("lucky_drops:beacon", {
	description = "Beacon",
	visual_scale = 1.0,
	tiles = {"beacon.png"},
	inventory_image = "beacon.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})
minetest.register_craft({
	output = 'lucky_drops:ultimate_diamond 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:ultimate_diamond_block',''},
		{'','',''}
	}
})
minetest.register_node("lucky_drops:ultimate_diamond_block", {
	description = "ultimate diamond block",
	visual_scale = 1.0,
	tiles = {"ultimate_diamond_block.png"},
	inventory_image = "ultimate_diamond_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})
minetest.register_craft({
	output = 'lucky_drops:compact_diamond 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compact_diamond_block',''},
		{'','',''}
	}
})
minetest.register_node("lucky_drops:enchanted_diamond_block", {
	description = "enchanted diamond block",
	visual_scale = 1.0,
	tiles = {"enchanted_diamond_block.png"},
	inventory_image = "enchanted_diamond_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})
minetest.register_craft({
	output = 'lucky_drops:enchanted_diamond 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:enchanted_diamond_block',''},
		{'','',''}
	}
})
minetest.register_node("lucky_drops:enchanted_purified_diamond_block", {
	description = "enchanted purified diamond block",
	visual_scale = 1.0,
	tiles = {"enchanted_purified_diamond_block.png"},
	inventory_image = "enchanted_purified_diamond_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})
minetest.register_craft({
	output = 'lucky_drops:enchanted_purified_diamond 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:enchanted_purified_diamond_block',''},
		{'','',''}
	}
})
minetest.register_node("lucky_drops:compressed_purified_diamond_block", {
	description = "compressed purified diamond block",
	visual_scale = 1.0,
	tiles = {"compressed_purified_diamond_block.png"},
	inventory_image = "compressed_purified_diamond_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})
minetest.register_craft({
	output = 'lucky_drops:compressed_purified_diamond 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compressed_purified_diamond_block',''},
		{'','',''}
	}
})

minetest.register_node("lucky_drops:compact_purified_diamond_block", {
	description = "compact purified diamond block",
	visual_scale = 1.0,
	tiles = {"compact_purified_diamond_block.png"},
	inventory_image = "compact_purified_diamond_block.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = true,
	groups = {fleshy=3,dig_immediate=3,flammable=1,cracky=90}
})
minetest.register_craft({
	output = 'lucky_drops:compact_purified_diamond 9',
	recipe = {
		{'','',''},
		{'','lucky_drops:compact_purified_diamond_block',''},
		{'','',''}
	}
})

minetest.register_entity("lucky_drops:luckymagicbluespell", {
	textures = {"lucky_magic_spell.png"},
	velocity = 15,
	light_source = 20,
	on_step = function (self, pos, node, dtime)
				local pos = self.object:getpos()
					local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2) 
                for k, obj in pairs(objs) do
                    if obj:is_player() then
                        return
                    else
                    obj:set_hp(obj:get_hp()-70)					
				    if obj:get_entity_name() ~= "lucky_drops:luckymagicbluespell" then
						if obj:get_hp()<=0 then 
							obj:remove()
						end
						--self.object:remove() 
					end						
				end
            end

					for dx=-1,1 do
						for dy=-1,1 do
							for dz=-1,1 do
								local p = {x=pos.x+dx, y=pos.y, z=pos.z+dz}
								local t = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
								local n = minetest.env:get_node(p).name
								if n ~= "lucky_drops:luckymagicbluespell" and n ~="default:stone" and n ~="default:desert_stone"  then	
									if minetest.registered_nodes[n].groups.flammable --[[or math.random(1, 100) <= 1]] then
										minetest.env:set_node(t, {name="air"})
									else 
										minetest.env:set_node(t, {name="air"})
									end
								elseif n == "default:stone" or n =="default:desert_stone" then
									self.hit_node(self, pos, node)
									self.object:remove()
									return
								end
							end
						end
					end
	end,
	
	
	hit_node = function(self, pos, node)
--	local pos = self.object:getpos()
		for dx=-4,4 do
			for dy=-4,4 do
				for dz=-4,4 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local t = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if math.random(1, 50) <= 35 then
						minetest.env:remove_node(p)
					end
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <=5 then
										minetest.env:set_node(t, {name="air"})
					end
					local objects = minetest.env:get_objects_inside_radius(pos, 4)
											for _,obj in ipairs(objects) do
												if obj:is_player() or (obj:get_luaentity() and obj:get_luaentity().name ~= "__builtin:item") then
													local obj_p = obj:getpos()
													local vec = {x=obj_p.x-pos.x, y=obj_p.y-pos.y, z=obj_p.z-pos.z}
													local dist = (vec.x^2+vec.y^2+vec.z^2)^0.5
													local damage = (80*0.5^dist)*2
													obj:punch(obj, 1.0, {
													full_punch_interval=1.0,
													damage_groups={fleshy=damage},
													}, vec)
												end
										end

					minetest.add_particlespawner(
			0, --amount
			0.1, --time
			{x=pos.x-3, y=pos.y-3, z=pos.z-3}, --minpos
			{x=pos.x+3, y=pos.y+3, z=pos.z+3}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=-0.5,y=5,z=-0.5}, --minacc
			{x=0.5,y=5,z=0.5}, --maxacc
			0.1, --minexptime
			1, --maxexptime
			50, --minsize
			90, --maxsize
			false, --collisiondetection
			"zap.png" --texture
		)
                        
				end
			end
		end
	end
})

minetest.register_craftitem("lucky_drops:lightningrod", {
	description = "Lucky Magic Wand",
	inventory_image = "lightningwand.png",
	on_use = function (itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*6,y=dir.y*6,z=dir.z*6}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 20,
})

minetest.register_entity("lucky_drops:luckyfireball", {
	textures = {"luckyfireball.png"},
	velocity = 15,
	on_step = function (self, pos, node, dtime)
				local pos = self.object:getpos()
					local objs = minetest.env:get_objects_inside_radius({x=pos.x,y=pos.y,z=pos.z}, 2) 
                for k, obj in pairs(objs) do
                    if obj:is_player() then
                        return
                    else
                    obj:set_hp(obj:get_hp()-70)					
				    if obj:get_entity_name() ~= "lucky_drops:luckyfireball" then
						if obj:get_hp()<=0 then 
							obj:remove()
						end
						--self.object:remove() 
					end						
				end
            end

					for dx=-1,1 do
						for dy=-1,1 do
							for dz=-1,1 do
								local p = {x=pos.x+dx, y=pos.y, z=pos.z+dz}
								local t = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
								local n = minetest.env:get_node(p).name
								if n ~= "lucky_drops:luckyfireball" and n ~="default:stone" and n ~="default:desert_stone"  then	
									if minetest.registered_nodes[n].groups.flammable --[[or math.random(1, 100) <= 1]] then
										minetest.env:set_node(t, {name="air"})
									else 
										minetest.env:set_node(t, {name="air"})
									end
								elseif n == "default:stone" or n =="default:desert_stone" then
									self.hit_node(self, pos, node)
									self.object:remove()
									return
								end
							end
						end
					end
	end,
	
	
	hit_node = function(self, pos, node)
--	local pos = self.object:getpos()
		for dx=-4,4 do
			for dy=-4,4 do
				for dz=-4,4 do
					local p = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local t = {x=pos.x+dx, y=pos.y+dy, z=pos.z+dz}
					local n = minetest.env:get_node(pos).name
					if math.random(1, 50) <= 35 then
						minetest.env:remove_node(p)
					end
					if minetest.registered_nodes[n].groups.flammable or math.random(1, 100) <=5 then
										minetest.env:set_node(t, {name="air"})
					end
					local objects = minetest.env:get_objects_inside_radius(pos, 4)
											for _,obj in ipairs(objects) do
												if obj:is_player() or (obj:get_luaentity() and obj:get_luaentity().name ~= "__builtin:item") then
													local obj_p = obj:getpos()
													local vec = {x=obj_p.x-pos.x, y=obj_p.y-pos.y, z=obj_p.z-pos.z}
													local dist = (vec.x^2+vec.y^2+vec.z^2)^0.5
													local damage = (80*0.5^dist)*2
													obj:punch(obj, 1.0, {
													full_punch_interval=1.0,
													damage_groups={fleshy=damage},
													}, vec)
												end
										end

					minetest.add_particlespawner(
			0, --amount
			0.1, --time
			{x=pos.x-3, y=pos.y-3, z=pos.z-3}, --minpos
			{x=pos.x+3, y=pos.y+3, z=pos.z+3}, --maxpos
			{x=-0, y=-0, z=-0}, --minvel
			{x=0, y=0, z=0}, --maxvel
			{x=-0.5,y=5,z=-0.5}, --minacc
			{x=0.5,y=5,z=0.5}, --maxacc
			0.1, --minexptime
			1, --maxexptime
			8, --minsize
			10, --maxsize
			false, --collisiondetection
			"fire.png" --texture
		)
                        
				end
			end
		end
	end
})
minetest.register_craftitem("lucky_drops:firerod", {
	description = "Lucky Magic Wand",
	inventory_image = "firerod.png",
	on_use = function (itemstack, placer, pointed_thing)
			local dir = placer:get_look_dir();
			local playerpos = placer:getpos();
			local obj = minetest.env:add_entity({x=playerpos.x+0+dir.x,y=playerpos.y+2+dir.y,z=playerpos.z+0+dir.z}, "")
			local vec = {x=dir.x*6,y=dir.y*6,z=dir.z*6}
			obj:setvelocity(vec)
		return itemstack
	end,
	light_source = 15,
})
local addvectors = function (v1, v2)
	return {x=v1.x+v2.x, y=v1.y+v2.y, z=v1.z+v2.z}
end


minetest.register_craftitem("lucky_drops:coin_gold", {
	discription = "Gold Coin",
	inventory_image = "saddelrock.png",
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

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "saddelrock.png")

		end
})


minetest.register_craftitem("lucky_drops:coin_blue", {
	discription = "Blue Coin",
	inventory_image = "diamond.png",
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

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "diamond.png")

		end
})


minetest.register_craftitem("lucky_drops:coin_black", {
	discription = "Black Coin",
	inventory_image = "black.png",
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

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "black.png")

		end
})


minetest.register_craftitem("lucky_drops:coin_green", {
	discription = "Green Coin",
	inventory_image = "green.png",
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

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "green.png")

		end
})



minetest.register_craftitem("lucky_drops:coin_fire", {
	discription = "Fire Coin",
	inventory_image = "fire.png",
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

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "fire.png")

		end
})

minetest.register_craftitem("lucky_drops:coin_stone", {
	discription = "Fire Stone",
	inventory_image = "beaconstone.png",
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

		minetest.add_particlespawner(900, 1.2,
			minp, maxp,
			minvel, maxvel,
			{x=0, y=0, z=0}, {x=0, y=1, z=0},
			1.2, 2,
			0.1, 1,
			false, "beaconstone.png")

		end
})






