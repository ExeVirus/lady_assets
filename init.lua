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
