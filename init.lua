local lady = {}

lady.register_mesh = function(name)
	autobox.register_node(
		"ladybug:"..name, --node name
		name..".box", --node bounding box
		{ --node def
			description =  "ladybug:"..name,
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