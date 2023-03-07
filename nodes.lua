greenery_galore.register_colored_node({
	name = "colored_stonebrick",
	desc = " Colored Stonebrick",
	tiles = {"greenery_galore_colored_stonebrick.png"},
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})

greenery_galore.register_colored_node({
	name = "colored_wood",
	desc = "Colored Wooden Planks",
	tiles = {"greenery_galore_colored_wood.png"},
	groups = {tree = 3, choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults()
})

greenery_galore.register_colored_node({
	name = "colored_glass",
	desc = "Colored Glass",
	drawtype = "glasslike",
	tiles = {"greenery_galore_colored_glass.png"},
	paramtype = "light",
	alpha = true,
	sunlight_propagates = true,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults()
})

greenery_galore.register_normal_node({
	name = "moss_tree1",
	desc = "Moss tree",
	walkable = true,
	sides = {"default_tree.png^greenery_galore_moss_tree1.png",
                "default_tree.png^greenery_galore_moss_tree2.png",
                "default_tree.png^greenery_galore_moss_tree3.png",
                "default_tree.png^greenery_galore_moss_tree4.png"},
	ends = "default_tree_top.png",
	groups = {tree = 3, choppy = 1, oddly_breakable_by_hand = 1, flammable = 2}
})

greenery_galore.register_replacement({
 	replace = "default:tree",
	replace_with = "greenery_galore:moss_tree1",
	y_offset = 0,
	under = "group:soil",
	above = "default:tree",
	height_range = 3,
	chance = 80,
	randomRotate = true
})

-- Forest - leaf_litters
greenery_galore.register_nodebox_plant({
	name = "leaf_litter",
	desc = "Leaf litter",
	bounds = {-0.5, -0.45, -0.5, 0.5, -0.48, 0.5},
	persist = .7,
	scale = 0.7,
	density = .3,
	spread = 5,
	randomRotate = true,
	biomes = {"coniferous_forest",
                "deciduous_forest",
                "rainforest"},
	spawn_on = {"default:dirt_with_grass",
                "default:dirt"}
})

greenery_galore.register_nodebox_plant({
	name = "leaf_litter2",
	desc = "Leaf litter",
	bounds = {-0.5, -0.45, -0.5, 0.5, -0.48, 0.5},
	persist = .7,
	scale = 0.7,
	density = .3,
	spread = 3,
	randomRotate = true,
	biomes = {"coniferous_forest",
                "deciduous_forest",
                "rainforest"},
	spawn_on = {"default:dirt_with_grass",
                "default:dirt"}
})

greenery_galore.register_nodebox_plant({
	name = "leaf_litter3",
	desc = "Leaf litter",
	bounds = {-0.5, -0.45, -0.5, 0.5, -0.48, 0.5},
	persist = .7,
	scale = 0.7,
	density = .3,
	spread = 3,
	randomRotate = true,
	biomes = {"coniferous_forest",
                "deciduous_forest",
                "rainforest"},
	spawn_on = {"default:dirt_with_grass",
                "default:dirt"}
})

