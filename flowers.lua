--Grassland
greenery_galore.register_plantlike_plant({
	name = "pink_geranium",
	desc = "Pink Geranium",
	color = "pink",
	scale = 0.8,
	bounds = {-.24, -.5, -.24, .24, 0.1, .24},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "violet_lupin",
	desc = "Violet Lupin",
	color = "violet",
	scale = 1.2,
	waving = 1,
	bounds = {-.3125, -.5, -.3125, .3125, 1.3125, .3125},
	persist = 0.5,
	density = .02,
	spread = 10,
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "violet_lupin_single",
	desc = "Violet Lupin",
	color = "violet",
	scale = 1.9,
	waving = 1,
	bounds = {-.3125, -.5, -.3125, .3125, 1.3125, .3125},
	persist = 1.2,
	density = .03,
	spread = 10,
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "pink_tulip",
	desc = "Pink Tulip",
	color = "pink",
	bounds = {-.14, -.5, -.14, .14, 0.4, .14},
	biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = 2.5,
	density = .005,
	spread = 100,
})

greenery_galore.register_plantlike_plant({
	name = "red_tulip",
	desc = "Red Tulip",
	color = "pink",
	bounds = {-.14, -.5, -.14, .14, 0.4, .14},
	biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = 2.5,
	density = .005,
	spread = 100,
})

greenery_galore.register_plantlike_plant({
	name = "violet_lupin",
	desc = "Violet Lupin",
	color = "violet",
	scale = 1.9,
	waving = 1,
	bounds = {-.3125, -.5, -.3125, .3125, 1.3125, .3125},
	persist = 2.5,
	density = .005,
	spread = 5000,
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "yellow_daffodil",
	desc = "Yellow Daffodil",
	color = "yellow",
	waving = 1,
	bounds = {-.14, -.5, -.14, .14, 0.4, .14},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "narcissus",
	desc = "White Narcissus",
	color = "white",
	randomRotate = true,
	waving = 1,
	bounds = {-.2, -.5, -.2, .2, 0.3, .2},
        biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "magenta_flower",
	desc = "Magenta flower",
	color = "magenta",
	scale = 1.3,
	waving = 1,
	randomRotate = true,
	bounds = {-.2, -.5, -.2, .2, 0.25, .2},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "lily_tall",
	desc = "Asiatic Lily",
	color = "red",
	scale = 1.9,
	waving = 1,
	randomRotate = true,
	bounds = {-.3125, -.5, -.3125, .3125, 1.3125, .3125},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "poppy",
	desc = "Poppy",
	color = "red",
	randomRotate = true,
	waving = 1,
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "single_rose",
	desc = "Red Rose",
	color = "red",
	scale = 1.,
	waving = 1,
	bounds = {-.2, -.5, -.2, .2, 0.5, .2},
        biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = 0.5,
	density = .03,
	spread = 300
})

greenery_galore.register_plantlike_plant({
	name = "yellow_iris",
	desc = "Yellow Iris",
	color = "yellow",
	scale = 1.3,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, 0.75, .3},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_mesh_plant({
	name = "sunflower1",
	desc = "Sunflower",
	mesh = "sunflower1.obj",
	inv_image  = "greenery_galore_sunflower1_inv.png",
	wield_image = "greenery_galore_sunflower1_inv.png",
	color = "yellow",
	randomRotate = true,
	bounds = {-.3, -.5, -.3, .3, 1.44, .3},
	biomes = {"grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = 2.5,
	density = .005,
	spread = 5000
})

greenery_galore.register_plantlike_plant({
	name = "blue_cornflower_single",
	desc = "Single Blue Cornflower",
	color = "blue",
	waving = 1,
	bounds = {-.12, -.5, -.12, .12, 0.45, .12},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "red_clover",
	desc = "Red Clover",
	color = "red",
	waving = 1,
	scale = 1.3,
	randomRotate = true,
	bounds = {-.3, -.5, -.3, .3, 0.1, .3},
	noSpawn = true
})

greenery_galore.register_group_spawn({
	node = "red_clover",
	spawn_on = {"default:dirt_with_grass"},
	spawn_near = {"default:tree"},
	spawn_near_count = 15,
	spawn_length_max = 10,
	chance = 99,
	spread = 5,
	amount = 10,
	randomRotate = true,
	y_offset = 1,
})

greenery_galore.register_plantlike_plant({
	name = "gilia",
	desc = "Gilia",
	color = "violet",
	waving = 1,
	randomRotate = true,
	bounds = {-.23, -.5, -.23, .23, 0.4, .23},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "single_hyacinth",
	desc = "Single Blue Hyacinth",
	color = "blue",
	waving = 1,
	bounds = {-.13, -.5, -.13, .13, 0.2, .13},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}

})

greenery_galore.register_plantlike_plant({
	name = "daisies",
	desc = "Daisies",
	color = "white",
	randomRotate = true,
	waving = 1,
	scale = 0.8,
	bounds = {-.15, -.5, -.15, .15, 0.3, .15},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = .4,
	density = .08,
	spread = 50,
})

greenery_galore.register_plantlike_plant({
	name = "single_daisy",
	desc = "Daisy",
	color = "white",
	waving = 1,
	scale = 0.8,
	bounds = {-.1, -.5, -.1, .1, 0.25, .1},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"},
	persist = 1.2,
	density = .05,
	spread = 50,
})

greenery_galore.register_plantlike_plant({
	name = "yellow_daylily",
	desc = "Yellow daylily",
	color = "yellow",
	scale = 1.2,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, 0.5, .3},
	biomes = {"grassland",
                "grassland_dunes",
                "grassland_ocean",
                "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "orange_dahlia",
	desc = "Orange Dahlia",
	color = "orange",
	scale = 1.1,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, -0.1, .3},
	biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "sticky_catchfly",
	desc = "Sticky Catchfly",
	color = "magenta",
	scale = 1.0,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, -0.1, .3},
	biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "allium",
	desc = "Allium",
	color = "pink",
	scale = 1.0,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, -0.1, .3},
	biomes = {"grassland", "grassland_dunes", "grassland_ocean", "floatland_grassland"},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "roses_bush",
	desc = "Roses Bush",
	color = "red",
	scale = 1.8,
	waving = 1,
	bounds = {-.3125, -.5, -.3125, .3125, .5, .3125},
	biomes = {"grassland", "deciduous_forest", "deciduous_forest_shore", "deciduous_forest_ocean", "rainforest", "rainforest_swamp",
               "rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"},
	persist = 1.95,
	density = .01,
	spread = 225
})

greenery_galore.register_plantlike_plant({
	name = "black_calla",
	desc = "Black Calla",
	color = "black",
	scale = 1.2,
	randomRotate = true,
	bounds = {-.2, -.5, -.2, .2, 0.25, .2},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "magenta_flower",
	desc = "Magenta flower",
	color = "magenta",
	scale = 1.3,
	waving = 1,
	randomRotate = true,
	bounds = {-.2, -.5, -.2, .2, 0.25, .2},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "bluebell",
	desc = "Bluebells",
	color = "blue",
	scale = 1.3,
	randomRotate = true,
	bounds = {-.2, -.5, -.2, .2, 0.25, .2},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"},
	persist = 1.0,
	density = .01,
	spread = 10
})

greenery_galore.register_plantlike_plant({
	name = "single_bluebell",
	desc = "Bluebell",
	color = "blue",
	scale = 1.1,
	randomRotate = true,
	bounds = {-.15, -.5, -.15, .15, 0.2, .15},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"},
	persist = 1.3,
	density = .05,
	spread = 50
})

greenery_galore.register_plantlike_plant({
	name = "lobelia",
	desc = "Lobelia",
	color = "violet",
	scale = 1.9,
	waving = 1,
	randomRotate = true,
	bounds = {-.42, -.5, -.42, .42, 0.8, .42},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "violet",
	desc = "Violet flower",
	color = "violet",
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, 0.1, .3},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"}
})

greenery_galore.register_plantlike_plant({
	name = "lewisia",
	desc = "Lewisia",
	color = "pink",
	scale = 1.1,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, -0.1, .3},
	biomes = {"deciduous_forest",
		"deciduous_forest_shore",
		"deciduous_forest_ocean",
		"rainforest",
		"rainforest_swamp",
		"rainforest_ocean",},
	spawn_on = {"default:dirt_with_grass"}
})

-- Desert
greenery_galore.register_plantlike_plant({
	name = "desert_flame_pea",
	desc = "Desert Flame pea",
	color = "orange",
	scale = 1.4,
	bounds = {-.45, -.5, -.45, .45, .1, .45},
	biomes = {"desert",
                "sandstone_desert"},
	spawn_on = {"default:sand",
                "default:desert_sand"},
	persist = 1.1,
	density = .01,
	spread = 100
})

greenery_galore.register_plantlike_plant({
	name = "desert_tinsel",
	desc = "Desert Tinsel",
	color = "white",
	biomes = {"sandstone_desert",
                 "cold_desert",
                 "grassland_dunes"},
	spawn_on = {"default:sand",
                "default:desert_sand",
                "default:silver_sand"},
	scale = 1.9,
	color = "white",
	randomRotate = true,
	bounds = {-.5, -.5, -.5, .5, 1.1, .5},
	persist = 1.5,
	density = .009,
	spread = 50
})

greenery_galore.register_plantlike_plant({
	name = "desert_paintbrush",
	desc = "Desert Paintbrush flower",
	color = "red",
	randomRotate = true,
	bounds = {-.12, -.5, -.12, .12, 0.47, .12},
	biomes = {"cold_desert",
                "grassland_dunes",
		 "grassland_ocean"},
	spawn_on = {"default:sand",
                "default:desert_sand",
                "default:silver_sand"},
	persist = 1.5,
	density = .008,
})

greenery_galore.register_plantlike_plant({
	name = "verbena",
	desc = "Desert Verbena",
	color = "violet",
	randomRotate = true,
	scale = 1.4,
	bounds = {-.45, -.5, -.45, .45, 0.1, .45},
	biomes = {"desert",
                "sandstone_desert",
                "cold_desert",
                "grassland",
                "grassland_dunes",
                "grassland_ocean"},
	spawn_on = {"default:sand", "default:desert_sand", "default:silver_sand"},
	persist = 1,
	density = .01,
	spread = 100
})

greenery_galore.register_plantlike_plant({
	name = "desert_clover",
	desc = "Desert Clover",
	color = "violet",
	biomes = {"desert",
                "sandstone_desert"},
	spawn_on = {"default:sand",
                "default:desert_sand",
                "default:silver_sand"},
	persist = .9,
	density = .03,
	spread = 100
})

greenery_galore.register_plantlike_plant({
	name = "aloe_ferox",
	desc = "Aloe Ferox",
	color = "red",
	scale = 3.2,
	randomRotate = true,
	bounds = {-.5, -.5, -.5, .5, 2.5, .5},
	biomes = {"sandstone_desert",
                "cold_desert"},
	spawn_on = {"default:sand",
                "default:desert_sand"},
	persist = 1.3,
	density = .01,
	spread = 100
})

-- MIXED
 --forest, grassland
greenery_galore.register_plantlike_plant({
	name = "aconitum",
	desc = "Aconitum",
	color = "white",
	randomRotate = true,
	waving = 1,
	bounds = {-.14, -.5, -.14, .14, 0.4, .14},
	damageOnPunch = 4,
	damage_per_second = 1,0
})

greenery_galore.register_plantlike_plant({
	name = "cinnabar_clover",
	desc = "Cinnabar Clover",
	color = "red",
	randomRotate = true,
	bounds = {-.2, -.5, -.2, .2, 0.25, .2}
})

greenery_galore.register_plantlike_plant({
	name = "orange_iris",
	desc = "Orange Iris",
	color = "orange",
	scale = 1.3,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, 0.75, .3}
})

greenery_galore.register_plantlike_plant({
	name = "violet_iris",
	desc = "Violet Iris",
	color = "violet",
	scale = 1.3,
	randomRotate = true,
	waving = 1,
	bounds = {-.3, -.5, -.3, .3, 0.75, .3}
})

greenery_galore.register_plantlike_plant({
	name = "blue_cornflower",
	desc = "Blue Cornflower",
	color = "blue",
	waving = 1,
	persist = 1.0,
	density = .025
})

greenery_galore.register_plantlike_plant({
	name = "gilia_single",
	desc = "Single Gilia",
	color = "violet",
	waving = 1,
	randomRotate = true,
	bounds = {-.1, -.5, -.1, .1, 0.38, .1}
})

greenery_galore.register_plantlike_plant({
	name = "hyacinth",
	desc = "Blue Hyacinth",
	color = "blue",
	randomRotate = true,
	bounds = {-.23, -.5, -.23, .23, 0.2, .23},
	waving = 1,
})

greenery_galore.register_plantlike_plant({
	name = "yucca",
	desc = "Yucca",
	color = "white",
	scale = 1.9,
	waving = 1,
	bounds = {-.3125, -.5, -.3125, .3125, 1.3125, .3125},
	biomes = {"desert", "sandstone_desert", "cold_desert", "grassland", "grassland_dunes", "grassland_ocean"},
	spawn_on = {"default:dirt_with_grass"},
        persist = .5,
	density = .01,
	spread = 50

})
