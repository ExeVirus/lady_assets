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
lady.register_mesh("grass_medium")
lady.register_mesh("grass_short")
lady.register_mesh("flower_pot")
lady.register_mesh("garden_rake")
lady.register_mesh("grass_blade_1")
lady.register_mesh("grass_plant_1")
lady.register_mesh("grass_tuft")
lady.register_mesh("grass")
lady.register_mesh("hummingbird")
lady.register_mesh("ivy")
lady.register_mesh("leafy_green")
lady.register_mesh("mushroom_2")
lady.register_mesh("mushroom")
lady.register_mesh("pastel_flowers")
lady.register_mesh("pushlin")
lady.register_mesh("roses")
lady.register_mesh("slug_1")
lady.register_mesh("slug_2")
lady.register_mesh("tree_roots")
lady.register_mesh("tree_stump")
lady.register_mesh("trowel")
lady.register_mesh("tulips")
lady.register_mesh("twig_1")
lady.register_mesh("watering_can")
