local lady = {}

lady.register_mesh = function(name)
	autobox.register_node(
		"lady_assets:"..name, --node name
		name..".box", --node bounding box
		{ --node def
			description =  "lady_assets:"..name,
			drawtype = "mesh",
			mesh = name..".obj",
			sunlight_propagates = true,
			paramtype2 = "facedir",
			paramtype = "light",
			tiles = {name..".png"},
			groups = { oddly_breakable_by_hand=2 },
		},
		true
	)
end

lady.register_mesh("bell_flower")
lady.register_mesh("carrot")
lady.register_mesh("daffodil")
lady.register_mesh("desert_flower")
lady.register_mesh("desert_marigold")
lady.register_mesh("fence")
lady.register_mesh("fern")
lady.register_mesh("flower_pot")
lady.register_mesh("garden_rake")
lady.register_mesh("grass")
lady.register_mesh("grass_blade_1")
lady.register_mesh("grass_medium")
lady.register_mesh("grass_plant_1")
lady.register_mesh("grass_short")
lady.register_mesh("grass_tuft")
lady.register_mesh("hummingbird")
lady.register_mesh("ivy")
lady.register_mesh("leafy_green")
lady.register_mesh("mushroom")
lady.register_mesh("mushroom_2")
lady.register_mesh("pastel_flowers")
lady.register_mesh("pushlin")
lady.register_mesh("roses")
lady.register_mesh("slug_1")
lady.register_mesh("slug_2")
lady.register_mesh("star")
lady.register_mesh("tree_roots")
lady.register_mesh("tree_stump")
lady.register_mesh("trowel")
lady.register_mesh("tulips")
lady.register_mesh("twig_1")
lady.register_mesh("vine_1")
lady.register_mesh("watering_can")

--Water For game
minetest.register_node("lady_assets:water", {
	description = "Water",
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.475, 0.5},
		},
	},
	connects_to = "lady_assets:water",
	connect_sides = { "top", "bottom"},
	waving = 3,
	tiles = {
		{
			name = "water.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	drowning = 1,
	post_effect_color = {a = 50, r = 15, g = 30, b =45},
	groups = { oddly_breakable_by_hand = 2},
})

--Water For game
minetest.register_node("lady_assets:_star", {
	description = "Star",
	drawtype = "mesh",
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
	},
	use_texture_alpha = true,
	mesh = "_star.obj",
	tiles = {
		{
			name = "_star.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 4,
				aspect_h = 1,
				length = 1.45,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	groups = { oddly_breakable_by_hand = 2},
})

--Grass For game
minetest.register_node("lady_assets:grass", {
	description = "grass",
	drawtype = "normal",
	tiles = {"grass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = { oddly_breakable_by_hand = 2},
})


local _time = 0
minetest.register_globalstep(function(dtime)
	_time = _time + dtime
	if _time > 0.2 then
		_time = 0
		local _player = minetest.get_player_by_name("singleplayer")
		if _player then
			local _pos = _player:get_pos()
			local _node = minetest.get_node({x=_pos.x, y=_pos.y+0.5, z=_pos.z})
			if _node.name == "lady_assets:water" then
				minetest.chat_send_player("singleplayer", "Drowning!")
			else
				_node = minetest.get_node(_pos)
				if _node.name == "lady_assets:_star" then
					minetest.chat_send_player("singleplayer", "star")
				end
			end
		end
	end	
end)

stairsplus:register_all("lady_assets", "grass", "lady_assets:grass", {
	description = "Grass",
	tiles = {"grass.png"},
	groups = {oddly_breakable_by_hand=2},
})
