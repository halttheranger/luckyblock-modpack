minetest.register_craftitem("lucky_weapons:rocket", {
	description = "Rocket",
    stack_max = 1,
	inventory_image = "shooter_rocket_inv.png",
})

minetest.register_entity("lucky_weapons:rocket_entity", {
	physical = false,
	timer = 0,
	visual = "cube",
	visual_size = {x=1/8, y=1/8},
	textures = {
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
	},
	player = nil,
	collisionbox = {0,0,0, 0,0,0},
	on_activate = function(self, staticdata)
		if staticdata == "expired" then
			self.object:remove()
		end
	end,
	on_step = function(self, dtime)
		self.timer = self.timer + dtime
		if self.timer > 0.2 then
			local pos = self.object:getpos()
			if minetest.get_node(pos).name ~= "air" then
				self.object:remove()
				shooter:blast(pos, 2, 50, 7, self.player)
			end
			self.timer = 0
		end
	end,
	get_staticdata = function(self)
		return "expired"
	end,
})

minetest.register_tool("lucky_weapons:rocket_gun_loaded", {
	description = "Rocket Gun",
	inventory_image = "shooter_rocket_gun_loaded.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535/50)
		end
		itemstack = "lucky_weapons:rocket_gun 1 "..itemstack:get_wear()
		if pointed_thing.type ~= "nothing" then
			local pointed = minetest.get_pointed_thing_position(pointed_thing)
			if vector.distance(user:getpos(), pointed) < 8 then
				shooter:blast(pointed, 2, 50, 7)
				return itemstack
			end
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.5
			local obj = minetest.add_entity(pos, "lucky_weapons:rocket_entity")
			if obj then
				minetest.sound_play("shooter_rocket_fire", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -3, y=-10, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

minetest.register_tool("lucky_weapons:rocket_gun", {
	description = "Rocket Gun",
	inventory_image = "shooter_rocket_gun.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if inv:contains_item("main", "lucky_weapons:rocket") then
			minetest.sound_play("shooter_reload", {object=user})
			if not minetest.setting_getbool("creative_mode") then
				inv:remove_item("main", "lucky_weapons:rocket 1")
			end
			itemstack = "lucky_weapons:rocket_gun_loaded 1 "..itemstack:get_wear()
		else
			minetest.sound_play("shooter_click", {object=user})
		end
		return itemstack
	end,
})

minetest.register_craftitem("lucky_weapons:blast", {
	description = "Explosive Bullet",
    stack_max = 99,
	inventory_image = "blast.png",
})

minetest.register_entity("lucky_weapons:blast_entity", {
	physical = false,
	timer = 0,
	visual = "cube",
	visual_size = {x=1/8, y=1/8},
	textures = {
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
		"shooter_bullet.png",
	},
	player = nil,
	collisionbox = {0,0,0, 0,0,0},
	on_activate = function(self, staticdata)
		if staticdata == "expired" then
			self.object:remove()
		end
	end,
	on_step = function(self, dtime)
		self.timer = self.timer + dtime
		if self.timer > 0.2 then
			local pos = self.object:getpos()
			if minetest.get_node(pos).name ~= "air" then
				self.object:remove()
				shooter:blast(pos, 2, 50, 7, self.player)
			end
			self.timer = 0
		end
	end,
	get_staticdata = function(self)
		return "expired"
	end,
})

minetest.register_tool("lucky_weapons:rpg_loaded", {
	description = "Loaded RPG",
	inventory_image = "rpg.png",
	groups = {not_in_creative_inventory=1},
	on_use = function(itemstack, user, pointed_thing)
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535/50)
		end
		itemstack = "lucky_weapons:rpg 1 "..itemstack:get_wear()
		if pointed_thing.type ~= "nothing" then
			local pointed = minetest.get_pointed_thing_position(pointed_thing)
			if vector.distance(user:getpos(), pointed) < 8 then
				shooter:blast(pointed, 2, 50, 7)
				return itemstack
			end
		end
		local pos = user:getpos()
		local dir = user:get_look_dir()
		local yaw = user:get_look_yaw()
		if pos and dir and yaw then
			pos.y = pos.y + 1.5
			local obj = minetest.add_entity(pos, "lucky_weapons:blast_entity")
			if obj then
				minetest.sound_play("shooter_rocket_fire", {object=obj})
				obj:setvelocity({x=dir.x * 20, y=dir.y * 20, z=dir.z * 20})
				obj:setacceleration({x=dir.x * -3, y=-10, z=dir.z * -3})
				obj:setyaw(yaw + math.pi)
				local ent = obj:get_luaentity()
				if ent then
					ent.player = ent.player or user
				end
			end
		end
		return itemstack
	end,
})

minetest.register_tool("lucky_weapons:rpg", {
	description = "Unloaded RPG",
	inventory_image = "rpg.png",
	on_use = function(itemstack, user, pointed_thing)
		local inv = user:get_inventory()
		if inv:contains_item("main", "lucky_weapons:blast") then
			minetest.sound_play("shooter_reload", {object=user})
			if not minetest.setting_getbool("creative_mode") then
				inv:remove_item("main", "lucky_weapons:blast 1")
			end
			itemstack = "lucky_weapons:rpg_loaded 1 "..itemstack:get_wear()
		else
			minetest.sound_play("shooter_click", {object=user})
		end
		return itemstack
	end,
})

